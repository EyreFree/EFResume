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
    var pageTitle = EFHolderText("pageTitle")
    // 页面描述
    var pageDescription = EFHolderText("pageDescription")

    func apply() -> String {
        // 遍历所有属性
        let properties = Mirror(reflecting: self).children
        for property in properties {
            if let holder = property.value as? EFHolder {
                // 应用对应设置
                holder.apply(&content)
            }
        }
        return content
    }
}
