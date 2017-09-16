//
//  EFTemplete.swift
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

class EFTemplete: EFFile {

    // MARK:- 资源路径
    var basePath = EFHolderText("basePath")

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

    // MARK:- 个人简介
    var information = EFHolderArray("information") { (array) -> String in
        var content = ""
        for line in array {
            if let line = line as? String {
                content += line.p()
            }
        }
        return content
    }

    // MARK:- 技能专长
    var specialities = EFHolderMap("specialities") { (dictionary) -> String in
        var content = ""
        for (index, element) in dictionary.enumerated() {
            if let valueInt = element.value as? Int {
                content += (
                    "<div class=\"large-4 medium-4 small-6 columns\">" +
                        "<ul data-pie-id=\"\(index + 1)\" class=\"pie_desc\">" +
                        "<li data-value=\"\(valueInt)\">" +
                        "<div class=\"skill_info\"><span class=\"skill_name\">\(element.key)</span><span class=\"skill_level\">\(valueInt)</span></div>" +
                        "</li>" +
                        "<li data-value=\"\(100 - valueInt)\"></li>" +
                        "</ul>" +
                        "<div id=\"\(index + 1)\" class=\"pie  animated bounceIn\"></div>" +
                    "</div>"
                )
            }
        }
        return content
    }

    // MARK:- 技能评价
    var skillsList = EFHolderMap("skillsList") { (dictionary) -> String in
        var content = ""
        for (index, element) in dictionary.enumerated() {
            if let valueInt = element.value as? Int {
                var roundHtml = ""
                for li in 0 ..< 8 {
                    roundHtml += valueInt > li ? "<li><span></span></li>" : "<li><span class=\"grey\"></span></li>"
                }

                content += (
                    "<ul class=\"small-block-grid-2\">" +
                        "<li class=\"name\">\(element.key)</li>" +
                        "<li>" +
                        "<ul class=\"small-block-grid-8 ellipses\">" +
                        roundHtml +
                        "</ul>" +
                        "</li>" +
                    "</ul>"
                )
            }
        }
        return content
    }
    var skillsDescription = EFHolderArray("skillsDescription") { (array) -> String in
        var content = ""
        for line in array {
            if let line = line as? String {
                content += "<div class=\"name\">\(line)</div>"
            }
        }
        return content
    }

    // MARK:- 社区经验
    var GitHubID = EFHolderText("GitHubID")
    var community = EFHolderMap("community") { (dictionary) -> String in
        var content = ""
        for (index, element) in dictionary.enumerated() {
            if let valueString = element.value as? String {
                content += (
                    "<tr>" +
                        "<td>\(element.key)</td>" +
                        "<td>\(valueString)</td>" +
                    "</tr>"
                )
            }
        }
        return content
    }

    // MARK:- 个人经验
    var experience = EFHolderMap("experience") { (dictionary) -> String in
        var content = ""
        for (index, element) in dictionary.enumerated() {
            if let valueArray = element.value as? [String] {
                var valueHtml = ""
                for value in valueArray {
                    valueHtml += "<div class=\"date\">\(value)</div>"
                }

                content += (
                    "<div class=\"large-6 medium-6 small-12 columns animated fadeIn\">" +
                        "<div class=\"year\">\(element.key)</div>" +
                        "<div class=\"exp_data\">" +
                        valueHtml +
                        "</div>" +
                    "</div>"
                )
            }
        }
        return content
    }

    // MARK:- 项目经历
    var project = EFHolderArray("project") { (array) -> String in
        var content = ""
        for element in array {
            if let valueDict = element as? Dictionary<String, Any> {
                var proDescsHtml = ""
                if let proDescs = valueDict["pro_desc"] as? [String] {
                    for proDesc in proDescs {
                        proDescsHtml += "<li class=\"desc_line\">\(proDesc)</li>"
                    }
                }

                content += (
                    "<div class=\"pro_item\">" +
                        "<div class=\"category\">\(valueDict["category"] as? String ?? "")</div>" +
                        "<div class=\"pro_name\">\(valueDict["pro_name"] as? String ?? "")</div>" +
                        "<div class=\"pro_desc\">" +
                        "<ul>" +
                        proDescsHtml +
                        "</ul>" +
                        "</div>" +
                    "</div>"
                )
                
            }
        }
        return content
    }

    // MARK:- 开源项目
    var openSource = EFHolderArray("openSource") { (array) -> String in
        var content = ""
        for element in array {
            if let valueDict = element as? Dictionary<String, String> {
                content += (
                    "<div class=\"large-12 small-12 columns animated fadeIn\">" +
                        "<div class=\"row\">" +
                        "<div class=\"large-3 medium-3 small-4 columns\">" +
                        "<div class=\"category\">\(valueDict["name"] ?? "")</div><img src=\"https://eyrefree.github.io/EFResume/img/ribbon.svg\" width=\"100\" height=\"131\" alt=\"\(valueDict["title"] ?? "")\" class=\"ribbon\"></div>" +
                        "<div class=\"large-9 medium-9 small-8 columns\">" +
                        "<div class=\"recog_data\">" +
                        "<div class=\"title\"><a href='\(valueDict["link"] ?? "")'>\(valueDict["title"] ?? "")</a></div>" +
                        "<div class=\"desc\">\(valueDict["description"] ?? "")</div>" +
                        "</div>" +
                        "</div>" +
                        "</div>" +
                    "</div>"
                )
            }
        }
        return content
    }

    // MARK:- 扩展技能
    var interests = EFHolderMap("interests") { (dictionary) -> String in
        var content = ""
        for element in dictionary {
            if let valueString = element.value as? String {
                content += (
                    "<div class=\"large-3 small-6 medium-3 columns animated bounceIn\">" +
                        "<div class=\"int_icon\"><i class=\"\(valueString)\"></i>" +
                        "<div class=\"activity\">\(element.key)</div>" +
                        "</div>" +
                    "</div>"
                )
            }
        }
        return content
    }
}

extension EFTemplete {

    // 应用设置
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
