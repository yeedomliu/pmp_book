#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

rm -rf _book

gitbook build

cp -a _book/* .

git add -A && git commit -a -m "automate_submit" && git push
