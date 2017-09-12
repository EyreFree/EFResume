//
//  main.swift
//  EFResume
//
//  Created by EyreFree on 2017/9/6.
//  Copyright © 2017年 eyrefree. All rights reserved.
//

import Foundation

func main() {
    // 打开模板文件
    var templete = EFTemplete(path: EFPath.templete)

    // 填入内容
    input(templete: &templete)

    // 打开生成的简历文件
    let resume = EFFile(path: EFPath.resume)
    resume.content = templete.apply()
    resume.save()
}

func input(templete: inout EFTemplete) {
    // 页面标题
    templete.pageTitle.set("EyreFree 的简历")
    templete.pageDescription.set("EyreFree, iOS, Swift")
}

main()
