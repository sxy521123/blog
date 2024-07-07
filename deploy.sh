#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run docs:build

# 进入生成的文件夹
cd src/.vuepress/dist

git init
git add -A
git commit -m 'deploy'

# 发布到 git@github.com:<username>/<repos-name>.git master:<branch>
 git push -f git@github.com:sxy521123/blog.git master:gh-pages

