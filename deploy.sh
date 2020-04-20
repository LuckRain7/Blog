###
 # @Description:  
 # @Author: LuckRain7
 # @Date: 2020-04-16 17:59:14
 ###
#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
hexo clean
hexo generate

# 进入生成的文件夹
cd public

# 如果是发布到自定义域名
echo 'luck.rain7.top' > CNAME

# git
git init
git add -A
git commit -m 'deploy'

# 推送
git push -f git@github.com:LuckRain7/blog.git master:gh-pages


cd -