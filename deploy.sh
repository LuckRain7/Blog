###
 # @Description:  
 # @Author: LuckRain7
 # @Date: 2020-04-16 17:59:14
 ###
#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
yarn build

git add .
git commit -m 'update'
git push -f git@e.coding.net:luckrain7/blog.git master:dev

# 进入生成的文件夹
cd public

# 如果是发布到自定义域名
# echo 'hexo.rain7.top' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:luckrain7/luckrain7.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
git push -f git@e.coding.net:luckrain7/blog.git master
# 发布到码云 git@gitee.com:LuckRain/MyBlog.git
# git push  -f git@gitee.com:LuckRain/MyBlog.git master:pages

cd -