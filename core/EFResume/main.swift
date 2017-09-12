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
    // 页面属性
    templete.pageTitle.set("普通的简历")
    templete.pageDescription.set("EyreFree 的个人简历")

    // 基本信息
    templete.name.set("EyreFree")
    templete.description.set("普通的 iOS 开发")
    templete.basicInfo.set(
        [
            "基本信息": [
                "年龄：24",
                "性别：男",
                "籍贯：江苏无锡"
            ],
            "联系方式": [
                "QQ：1795179491",
                "邮箱：i@eyrefree.org",
                "手机：18352505161"
            ],
            "社交账号": [
                "微博：" + "@eyrefree777".a(link: "https://weibo.com/eyrefree777"),
                "Twitter: " + "@eyrefree777".a(link: "https://twitter.com/EyreFree777"),
                "GitHub：" + "EyreFree".a(link: "https://github.com/EyreFree")
            ]
        ]
    )
}

main()
