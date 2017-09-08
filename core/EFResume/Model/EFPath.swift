//
//  EFPath.swift
//  EFResume
//
//  Created by EyreFree on 2017/9/6.
//  Copyright © 2017年 eyrefree. All rights reserved.
//

import Foundation

struct EFPath {

    // 程序执行路径
    static var base = FileManager.default.currentDirectoryPath

    // 模版文件路径
    static var templete: String {
        get {
            return base + "/templete.html"
        }
    }

    // 保存工程路径的中转文件路径
    static var PROJECT_DIR: String {
        get {
            return base + "/PROJECT_DIR"
        }
    }

    // 最终 index.html 文件路径
    static let resume = EFFile(path: EFPath.PROJECT_DIR).content.clean().replaceSuffix(
        string: "/core", with: "/docs/index.html"
    )
}
