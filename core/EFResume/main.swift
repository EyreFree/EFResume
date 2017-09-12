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
    // 应用所填入的信息
    resume.content = templete.apply()
    // 保存
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

    // 个人简介
    templete.information.set(
        [
            "目前就职于饿了么，主要负责\("蜂鸟商家版".a(link: "https://itunes.apple.com/cn/app/feng-niao-shang-jia-ban/id1203543592?mt=8"))的开发及维护工作，同时也负责管理物流 iOS 开发组的 GitHub 组织和维护本组的技术博客。",
            "自 2015 年开始接触 iOS 开发，至今已有 2 年时间，熟练掌握 Swift、Objective-C 代码的编写。熟悉大部分 iOS 开发与调试工具，理解 iOS App 结构与运行机制，注重代码质量与执行效率。",
            "了解常见移动 App 架构，长期使用 Swift 与 Objective-C 进行混合开发，熟悉各类常用第三方库的使用。",
            "熟悉 iOS 库的开发与发布，了解怎样利用 CocoaPods／Swift Package Manager／Cathage 进行打包与集成，业余时间热爱编写开源代码。熟悉持续集成，能够编写 Jenkins、Travis CI 等持续集成工具的配置。",
            "熟悉 Git Flow 工作流程，有较好的 Git 使用习惯。有良好的代码风格与清晰的文档结构，遵循团队开发规范。",
            "当前主要学习 Swift 语言，能够开发一定程度的 Android 程序，也会写一些简单的前端页面和 MFC／Qt 桌面端应用。",
            "寻觅一份 iOS 开发的全职正式工作，也可以根据具体情况考虑其它相关岗位。".strong()
        ]
    )

    // 技能专长
    templete.specialities.set(
        [
            "Swift": 70,
            "Objective-C": 45,
            "C/C++": 30
        ]
    )

    // 技能评价
    templete.skillsList.set(
        [
            "iOS": 5,
            "Swift": 6,
            "Objeective-C": 4,
            "Kotlin/Android": 2,
            "Shell": 1,
            "HTML & CSS": 3,
            "Javascript": 3,
            "C/C++/Qt/VC": 4,
            "Markdown": 7
        ]
    )
    templete.skillsDescription.set(
        [
            "有良好的代码编写规范，",
            "对应用工作机制较熟悉，",
            "有良好的程序开发能力，",
            "积攒了丰富的调试经验，",
            "热衷于用代码解决问题，",
            "熟练使用版本控制工具，",
            "倾力于开源与技术分享，",
            "能够阅读英文技术文档，",
            "关注科技行业前沿技术。"
        ]
    )

    // 社区经验
    templete.GitHubID.set("EyreFree")
}

main()
