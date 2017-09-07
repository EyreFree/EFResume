//
//  EFTwig.swift
//  EFResume
//
//  Created by EyreFree on 2017/9/6.
//  Copyright © 2017年 eyrefree. All rights reserved.
//

import Foundation

class EFTwig: EFFile {

    override func onLines() {
        guard var content = content else {
            return
        }

        // 移除不处理的语句
        for uselessContent in ["{%spaceless%}", "{%endspaceless%}"] {
            content = content.remove(string: uselessContent)
        }

        lines = content.components(separatedBy: "\n").map({
            $0.trimmingCharacters(in: .whitespacesAndNewlines)
        }).filter { $0 != "" }
    }
}
