--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import           Data.Monoid (mappend)
import           Hakyll
import           Hakyll.Core.Compiler
import           Hakyll.Web.Html
import           System.FilePath.Posix
import           Text.Pandoc
import           MathDoc
import           Control.Monad
import           Control.Applicative        ((<$>))
import           Data.Monoid                   (Monoid (..))
import           Control.Applicative           (Alternative (..), (<$>))
import           Data.Maybe
--------------------------------------------------------------------------------
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
    -- pages
    match "problems/*.md" $ do
        route $ setExtension "html"
        compile $ mathCompiler
            >>= loadAndApplyTemplate "templates/default.html" postCtx
            >>= relativizeUrls
    -- raw pages
    match "problems/*" $ version "raw" $ do
        route   idRoute
        compile copyFileCompiler

    match "templates/*" $ compile templateCompiler

mathDoc :: Item String -> Compiler (Item String)
mathDoc = return . fmap mathdoc

mathCompiler = getResourceBody >>= mathDoc

idPages = ["favicon.ico",
           "redirects.site44.txt",
           "timeline.html",
           "mathjax_conf.js",
           "mimetypes.site44.txt",
           "relation.dot",
           "index.html",
           "home.html",
           "404.html",
           "dagre.js"]
----
htmlTitleField :: Context String
htmlTitleField = Context $ \k i -> 
    if (k /= "htmltitle")
    then do empty
    else do value <- getMetadataField (itemIdentifier i) "title"
            return (if isNothing value then "" else fromJust value)
                                                                    
betterTitleField :: Context String
betterTitleField = Context $ \k i -> 
    if (k /= "title")
    then do empty
    else do value <- getMetadataField (itemIdentifier i) "title"
            return (mathdocInline $ if isNothing value then "" else fromJust value)

sourceField key = field key $
    fmap (maybe empty (sourceUrl . toUrl)) . getRoute . itemIdentifier

sourceUrl xs = (take (length xs - 4) xs) ++ "md"

--------------------------------------------------------------------------------
postCtx :: Context String
postCtx =
    sourceField "source"  `mappend`
    htmlTitleField        `mappend`
    dateField "date" "%F" `mappend`
    bodyField     "body"  `mappend`
    betterTitleField      `mappend`
    defaultContext        `mappend`
    constField "tags"  "" `mappend`
    missingField