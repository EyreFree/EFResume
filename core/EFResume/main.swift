//
//  main.swift
//  EFResume
//
//  Created by EyreFree on 2017/9/6.
//  Copyright © 2017年 eyrefree. All rights reserved.
//

import Foundation

// 测试用，设置当前工作目录
EFPath.base = "/Users/eyrefree/Documents/iOS/EFResume"

print(EFFile(path: EFPath.resume).content ?? "")
