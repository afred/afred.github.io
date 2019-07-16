#!/bin/bash -l

# Install Ruby Gems to ~/gems
# export GEM_HOME=$HOME/gems
# export PATH=$GEM_HOME/bin:$PATH

GH_PAGES_REPO=git@github.com:afred/afred.github.io.git
GH_PAGES_BRANCH=master
# GEMFILE=$TMP_SITE_DIR/Gemfile
# PUBLIC_WWW=/var/www/myrepo
tmp_dir=$(mktemp -d)

git clone $GH_PAGES_REPO $tmp_dir
rm -rf $tmp_dir
# bundle install
# bundle exec jekyll build -d $TMP_SITE_DIR
# # commit
# # push
# delete
exit
