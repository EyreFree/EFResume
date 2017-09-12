//
//  EFHolder.swift
//  EFResume
//
//  Created by EyreFree on 2017/9/12.
//  Copyright © 2017年 eyrefree. All rights reserved.
//

import Foundation

class EFHolder {

    var holder: String
    
    init(_ text: String) {
        holder = "%\(text)%"
    }

    func apply(_ templete: inout String) {
        templete = templete.replace(holder, with: generate())
    }

    func generate() -> String {
        fatalError("This method must be rewrite!")
    }
}
