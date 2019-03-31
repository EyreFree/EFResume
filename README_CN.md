![](https://raw.githubusercontent.com/EyreFree/EFResume/master/assets/EFResume.png)

<p align="center">
<a href="https://travis-ci.org/EyreFree/EFResume"><img src="http://img.shields.io/travis/EyreFree/EFResume.svg"></a>
<a href="https://codebeat.co/projects/github-com-eyrefree-efresume-master"><img alt="Codebeat" src="https://codebeat.co/badges/1f0df957-6f42-4169-aec0-22d506b421d4" /></a>
<a href="https://github.com/apple/swift"><img src="https://img.shields.io/badge/language-swift-orange.svg"></a>
<a href="https://raw.githubusercontent.com/EyreFree/EFResume/master/LICENSE"><img src="https://img.shields.io/badge/license-GPLv3-000000.svg"></a>
<a href="https://twitter.com/EyreFree777"><img src="https://img.shields.io/badge/twitter-@EyreFree777-blue.svg?style=flat"></a>
<a href="http://weibo.com/eyrefree777"><img src="https://img.shields.io/badge/weibo-@EyreFree-red.svg?style=flat"></a>
<img src="https://img.shields.io/badge/made%20with-%3C3-orange.svg">
</p>

EFResume 是一个普通的简历模板（可能还称不上），用 Swift 进行开发，受 [zresume](https://github.com/izuolan/zresume) 启发，因为 zresume 是基于容器技术的然后需要服务器支持，然而对此技术 EyreFree 表示一窍不通并且囊中羞涩但是觉得这份简历真的非常好看呢，所以就只能自己动手改成静态模板了，😂。设计稿来源于 [FREE Resume Template](https://www.behance.net/gallery/15677411/FREE-Resume-Template)。欢迎大家提 Issue 和 PR，希望能和大家一起改进这份简历，然后好用的话望大佬们赏个 Star，🙏，有问题可以来撩我。

> [English Introduction](https://github.com/EyreFree/EFResume/blob/master/README.md)

## 预览

![](https://raw.githubusercontent.com/EyreFree/EFResume/master/assets/preview.jpg)

## 示例

[https://eyrefree.github.io/EFResume/](https://eyrefree.github.io/EFResume/)

## 环境

- XCode 9.0+
- Swift 4.0+

## 安装

0. 唔，首先需要安装 Xcode；
1. 利用 `git clone` 命令下载本仓库；
2. 随后打开 core 目录下的 `EFResume.xcworkspace` 编译即可。

或执行以下命令：

```bash
git clone git@github.com:EyreFree/EFResume.git; cd EFResume/core; open EFResume.xcworkspace
```

## 使用

1. 用 Xcode 打开工程；
2. 打开 main.swift 文件，编辑 input 函数中对应的文本，将信息修改为自己的即可；
3. 编辑完成后直接编译即可；
4. 打开 docs 目录下的 index.html 可在本地进行预览；
5. 将本地变更提交到远端 Git 仓库；
6. 打开 GitHub 的 Pages 服务，选择 /docs 路径作为根路径，即可生成在线简历同时获得 URL 地址。
7. 祝好运，👍

备注：如果你遇到了 `dyld: Library not loaded: @rpath/libswiftCore.dylib` 错误，请参考 [这里](https://stackoverflow.com/questions/55357154/dyld-library-not-loaded-rpath-libswiftcore-dylib-problem-with-new-xcode-10-2)。

## 作者

EyreFree, eyrefree@eyrefree.org

## 协议

![](https://www.gnu.org/graphics/gplv3-127x51.png)

EFResume 基于 GPLv3 协议进行分发和使用，更多信息参见协议文件。
