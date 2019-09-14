--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE PatternSynonyms #-}
import           Data.Monoid (mappend, Monoid (..))
import           Hakyll
import           Hakyll.Core.Compiler
import           Hakyll.Web.Html
import           System.FilePath.Posix
import           Text.Pandoc
import           ChaoDoc
import           Control.Monad
import           Control.Applicative        ((<$>), Alternative (..), (<$>))
import           Data.Maybe
import           Data.Monoid
import qualified Data.Map as M
import           Hakyll.Web.Pandoc.Biblio 
import qualified Text.CSL as CSL
import           Text.CSL.Pandoc
--------------------------------------------------------------------------------

cslFile = "bib_style.csl" 
bibFile = "reference.bib" 
-- Must change the main matches

main :: IO ()
main = hakyll $ do
    -- static resources
    match (fromList idPages) $ do
        route   idRoute
        compile copyFileCompiler
    -- css
    match "css/*" $ do
        route   idRoute
        compile compressCssCompiler
    match "problems/*.md" $ do
        route   $ dropPostsPrefix `composeRoutes` setExtension ".html"

        compile $ do
            chaoDocCompiler
                >>= loadAndApplyTemplate "templates/post.html" postCtx
                -- >>= saveSnapshot "content"
                >>= loadAndApplyTemplate "templates/default.html" postCtx
    -- Index
    match "index.html" $ do
        route idRoute
        compile $ do
            let indexCtx = field "posts" $ \_ ->
                                postList

            getResourceBody
                >>= applyAsTemplate indexCtx
                >>= loadAndApplyTemplate "templates/default.html" postCtx

    -- bib
    match "bib_style.csl" $ compile cslCompiler
    match "reference.bib" $ compile biblioCompiler

    match "templates/*" $ compile templateCompiler

idPages = ["favicon.ico"]

htmlTitleField :: Context String
htmlTitleField = Context $ \k _ i -> 
    if (k /= "htmltitle")
    then do empty
    else do value <- getMetadataField (itemIdentifier i) "title"
            return $ StringField (if isNothing value then "" else fromJust value)
                                                                    
betterTitleField :: Context String
betterTitleField = Context $ \k _ i -> 
    if (k /= "richtitle")
    then do empty
    else do value <- getMetadataField (itemIdentifier i) "title"
            return $ StringField (chaoDocInline $ if isNothing value then "" else fromJust value)

sourceField key = field key $
    fmap (maybe empty (sourceUrl . toUrl)) . getRoute . itemIdentifier

sourceUrl xs = (take (length xs - 4) xs) ++ "md"


dropPostsPrefix :: Routes
dropPostsPrefix = gsubRoute "problems/" $ const ""

--------------------------------------------------------------------------------
postCtx :: Context String
postCtx =
    sourceField "source"  `mappend`
    bodyField     "body"  `mappend`
    betterTitleField      `mappend`
    htmlTitleField        `mappend`
    defaultContext        `mappend`
    constField "tags"  "" `mappend`
    missingField
--------------------------------------------------------------------------------
postList :: Compiler String
postList = do
    posts   <- loadAll ("problems/*" .&&. hasNoVersion)
    itemTpl <- loadBody "templates/post-item.html"
    list    <- applyTemplateList itemTpl postCtx posts
    return list

--------------------------------------------------------------------------------

myChaoDocWrite = def{writerHTMLMathMethod = KaTeX ""}

chaoDocCompiler :: Compiler (Item String)
chaoDocCompiler = do
    csl <- load cslFile
    bib <- load bibFile
    getResourceBody >>=
        myReadPandocBiblio chaoDocRead csl bib theoremFilter >>=
        return . writePandocWith myChaoDocWrite

addMeta name value (Pandoc meta a) =
  let prevMap = unMeta meta
      newMap = M.insert name value prevMap
      newMeta = Meta newMap
  in  Pandoc newMeta a

myReadPandocBiblio :: ReaderOptions
                   -> Item CSL
                   -> Item Biblio
                   -> (Pandoc -> Pandoc)           -- apply a filter before citeproc
                   -> Item String
                   -> Compiler (Item Pandoc)
myReadPandocBiblio ropt csl biblio filter item  = do
    -- Parse CSL file, if given
    style <- unsafeCompiler $ CSL.readCSLFile Nothing . toFilePath . itemIdentifier $ csl

    -- We need to know the citation keys, add then *before* actually parsing the
    -- actual page. If we don't do this, pandoc won't even consider them
    -- citations!
    let Biblio refs = itemBody biblio
    pandoc <- itemBody <$> readPandocWith ropt item
    let pandoc' = processCites style refs $ 
                  addMeta "link-citations" (MetaBool True) $ 
                  addMeta "reference-section-title" (MetaInlines [Str "References"]) $
                  filter pandoc -- here's the change

    return $ fmap (const pandoc') item
