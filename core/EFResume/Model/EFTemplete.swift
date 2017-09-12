//
//  EFTemplete.swift
//  EFResume
//
//  Created by EyreFree on 2017/9/8.
//  Copyright © 2017年 eyrefree. All rights reserved.
//

import Foundation

class EFTemplete: EFFile {

    // MARK:- 页面属性
    var pageTitle = EFHolderText("pageTitle")
    var pageDescription = EFHolderText("pageDescription")

    // MARK:- 基本信息
    var name = EFHolderText("name")
    var description = EFHolderText("description")
    var basicInfo = EFHolderMap("basicInfo") { (dictionary) -> String in
        var content = ""
        for element in dictionary {
            if let valueArray = element.value as? [String] {
                var valueHtml = ""
                for value in valueArray {
                    valueHtml += "<li>\(value)</li>"
                }

                content += (
                    "<div class=\"large-3 columns\">" +
                        "<div class=\"row\">" +
                        "<div class=\"small-4 columns light2\">\(element.key)</div>" +
                        "<div class=\"small-8 columns border-left light2\">" +
                        "<ul class=\"no-bullet\">" +
                        valueHtml +
                        "</ul>" +
                        "</div>" +
                        "</div>" +
                    "</div>"
                )
            }
        }
        return content
    }

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
