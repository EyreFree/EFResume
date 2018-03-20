//
//  String+.swift
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

extension String {

    // [] 操作符重载
    subscript(index: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: index)]
    }

    // 是否符合输入的正则表达式
    func conform(regex: String) -> Bool {
        return NSPredicate(format: "SELF MATCHES %@", regex).evaluate(with: self)
    }

    // 子串数量
    func occurrencesOf(subString: String) -> Int {
        return self.components(separatedBy: subString).count - 1
    }

    // 替换某个子字符串为另一字符串
    func replace(_ string: String, with: String, options: CompareOptions? = nil) -> String {
        if let options = options {
            return self.replacingOccurrences(of: string, with: with, options: options, range: nil)
        }
        return self.replacingOccurrences(of: string, with: with)
    }

    // 替换前缀
    func replacePrefix(string: String, with: String) -> String {
        if self.hasPrefix(string) {

            return with + String(self.dropFirst(string.count))
        }
        return self
    }

    // 替换尾缀
    func replaceSuffix(string: String, with: String) -> String {
        if self.hasSuffix(string) {
            return String(self.dropLast(string.count)) + with
        }
        return self
    }

    // 移除某个子串
    func remove(string: String) -> String {
        return self.replace(string, with: "")
    }

    // 移除某个前缀
    func removePrefix(string: String) -> String {
        return self.replacePrefix(string: string, with: "")
    }

    // 移除某个尾缀
    func removeSuffix(string: String) -> String {
        return self.replaceSuffix(string: string, with: "")
    }

    // 将多个连续重复字符变为一个
    func toOne() -> String {
        var outString = self
        let length = self.characters.count
        for index in (1 ..< length).reversed() {
            if outString[index] == outString[index - 1] {
                outString.remove(at: outString.index(outString.startIndex, offsetBy: index))
            }
        }
        return outString
    }

    // 清除字符串左右空格和换行
    func clean() -> String {
        return self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }

    // MARK:- HTML
    // 添加超链接
    func a(link: String) -> String {
        return "<a href='\(link)'>\(self)</a>"
    }

    // 添加 Strong
    func strong() -> String {
        return "<strong>\(self)</strong>"
    }

    // 添加 P
    func p() -> String {
        return "<p>\(self)</p>"
    }

    // 添加 Div
    func div() -> String {
        return "<div>\(self)</div>"
    }
}
