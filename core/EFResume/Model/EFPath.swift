//
//  EFPath.swift
//  EyreFree
//
//  Created by EyreFree on 2017/9/13.
//
//  Copyright (c) 2017 EyreFree <eyrefree@eyrefree.org>
//
//  This file is part of EFResume.
//
//  EFResume is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  EFResume is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.

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
