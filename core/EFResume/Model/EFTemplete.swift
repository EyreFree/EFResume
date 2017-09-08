//
//  EFTemplete.swift
//  EFResume
//
//  Created by EyreFree on 2017/9/8.
//  Copyright © 2017年 eyrefree. All rights reserved.
//

import Foundation

class EFTemplete: EFFile {

    // 页面标题
    var pageTitle = "我的简历"

    func pageTitleApply() {
        content = content.replace("%pageTitle%", with: pageTitle)
    }

    func apply() -> String {
        pageTitleApply()

        return content
    }
}
