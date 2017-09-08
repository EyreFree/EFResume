//
//  main.swift
//  EFResume
//
//  Created by EyreFree on 2017/9/6.
//  Copyright © 2017年 eyrefree. All rights reserved.
//

import Foundation

func EFResume() {
    // 打开模板文件
    let templete = EFTemplete(path: EFPath.templete)

    print(EFPath.resume)

    // 打开生成的简历文件
    let resume = EFFile(path: EFPath.resume)
    resume.content = templete.apply()
    resume.save()
}

EFResume()
