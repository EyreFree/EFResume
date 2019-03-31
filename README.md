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

EFResume is a normal resume templete, in Swift. It is inspired by [zresume](https://github.com/izuolan/zresume), because zresume is based on Docker, but I know nothing about this technology unfortunately, and it is really very very beautiful, so I make it to a static templete on my own, 😂. The design is come from [FREE Resume Template](https://www.behance.net/gallery/15677411/FREE-Resume-Template). Issue and PR are welcome, wish to improve this resume with you, please press `Star` button above if EFResume has brought you convenience, 🙏, you can contact me if there is any problem.

> [中文介绍](https://github.com/EyreFree/EFResume/blob/master/README_CN.md)

## Overview

![](https://raw.githubusercontent.com/EyreFree/EFResume/master/assets/preview.jpg)

## Example

[https://eyrefree.github.io/EFResume/](https://eyrefree.github.io/EFResume/)

## Requirements

- Xcode 10.2+
- Swift 5.0+

## Installation

0. Emmmmmmmmmn, install Xcode first;
1. Clone the repo with `git clone` command;
2. Open `EFResume.xcworkspace` with Xcode in `core` folder and run.

Or you can run the following command in terminal:

```bash
git clone git@github.com:EyreFree/EFResume.git; cd EFResume/core; open EFResume.xcworkspace
```

## Usage

1. Open project with Xcode;
2. Open `main.swift` source file，edit text in the function `input`，change it to your own information；
3. Run this project;
4. Open `index.html` file in `docs` folder can have a preview;
5. Commit and push local change to remote;
6. Go to GitHub and open `GitHub Pages` in setting, use `/docs` as the root path, then you can get your online resume and get the URL at the same time.
7. Good luck & Enjoy it，👍

PS: if you get a `dyld: Library not loaded: @rpath/libswiftCore.dylib` error, see [this](https://stackoverflow.com/questions/55357154/dyld-library-not-loaded-rpath-libswiftcore-dylib-problem-with-new-xcode-10-2).

## Author

EyreFree, eyrefree@eyrefree.org

## License

![](https://www.gnu.org/graphics/gplv3-127x51.png)

EFResume is available under the GPLv3 license. See the LICENSE file for more info.
