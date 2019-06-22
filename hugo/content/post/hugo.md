---
title: "hugo搭建静态博客"
date: 2019-06-22T23:54:09+08:00
lastmod: 2019-06-22T23:54:09+08:00
keywords: []
tags: ["hugo"]
categories: []
toc: true
autoCollapseToc: false
draft: false  # 设为false可被编译为HTML，true供本地修改
---

## 前言
- 没事写点技术博客吧
- 博客用的<a href="https://github.com/gohugoio/hugo" target="_blank">hugo</a>，主题用的<a href="https://github.com/xianmin/hugo-theme-jane" target="_blank">jane</a>

## hugo搭建博客
### 安装hugo
- mac

```
brew install hugo
```

- ubuntu

```
sudo apt-get install hugo
```

### 本地写文章
- 生成名为hugo的网站

```
hugo new site hugo
```

- 安装主题，我选择的是jane

```shell
cd blog/themes
git clone git@github.com:xianmin/hugo-theme-jane.git jane
```

- 配置修改，可以参考jane的配置
- 生成markdown文章

```
hugo new post/first.md
```

- 启动本地服务

```
hugo server -D
```

### 发布网站到GitHub Pages
- 将要发布的文章内draft改为false后执行命令

```
hugo
```

- 可看到根目录下多出/public文件夹出来，该文件夹的内容即Hugo生成的整个静态网站。最终我们需要把这些静态网站的文件部署到一个地方，免费且稳定的GitHub Pages是一个很好的选择。具体操作如下：
    - 在GitHub新建一个Repository命名为wwq666.github.io，其中wwq666改成自己的GitHub账户名；
    - 在/hugo外层建立一个文件夹，命名为/wwq666.github.io
    - 进入/public文件夹将内容复制到/wwq666.github.io
    - 将/wwq666.github.io的内容push到远程仓库
- 命令如下

```shell
mkdir wwq666.github.io
cd hugo/public
cp -r . ../wwq666.github.io
cd ../wwq666.github.io
git init
git add .
git commit -m "init"
git remote add origin git@github.com:wwq666/wwq666.github.io.git
git push -u origin master
```

- 完成以上命令后，等待一分钟左右即可在 https://wwq666.github.io/ 访问你的网站。
- 以后每次更新文章后只用将生成的/public文件夹的静态网站内容复制到/wwq666.github.io，然后再push到远程仓库即可。也可将步骤写为Shell脚本，此处不再赘述。

### 使用自己的域名
略

## 参考
[参考](https://suixinblog.cn/2018/09/hugo.html)