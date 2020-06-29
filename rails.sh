#!/usr/bin/env bash

if [ $(rbenv global) != "2.0.0-p247" ]; then
  echo "====================== INSTALLING RUBY ======================"

  cd ~/.rbenv/plugins/ruby-build
  git pull
  cd ~

  rbenv install 2.0.0-p247
  rbenv global 2.0.0-p247
fi;

if ! which rails; then
  echo "====================== INSTALLING RAILS ======================"

  gem install rails --no-rdoc --no-ri
  rbenv rehash

  rails new foo
  rm -rf foo
fi;
