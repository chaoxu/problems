#!/bin/bash
# Temporarily store uncommited changes
git stash

# Verify correct branch
git checkout dev

# Build new files
# stack build
# stack exec chaosite clean
stack exec problems build

# Get previous files
git fetch --all
git checkout -b master --track origin/master

# Overwrite existing files with new files
rsync -a --checksum --filter='P _site/' --filter='P _cache/' --filter='P .git/' --filter='P .stack-work/' --filter='P .gitignore' --filter='P .gitattributes' --delete-excluded _site/ .

# Commit
git add -A
git commit -m "Publish."

# Push
git push origin master:master

# Restoration
git checkout dev
git branch -D master
git stash pop
