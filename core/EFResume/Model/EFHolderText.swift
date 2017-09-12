//
//  EFHolderText.swift
//  EFResume
//
//  Created by EyreFree on 2017/9/12.
//  Copyright © 2017年 eyrefree. All rights reserved.
//

import Foundation

class EFHolderText: EFHolder {

    override func generate() -> String {
        return content
    }

    func set(_ content: String) {
        self.content = content
    }
}
