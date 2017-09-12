//
//  EFHolderArray.swift
//  EFResume
//
//  Created by EyreFree on 2017/9/12.
//  Copyright © 2017年 eyrefree. All rights reserved.
//

import Foundation

class EFHolderArray: EFHolder {

    var array: Array<Any> = []
    var processor: ((Array<Any>) -> String)?

    init(_ text: String, _ processor: @escaping (Array<Any>) -> String) {
        super.init(text)
        self.processor = processor
    }

    private override init(_ text: String) {
        fatalError("This method should not be called!")
    }

    override func generate() -> String {
        return processor?(array) ?? ""
    }

    func set(_ array: Array<Any>) {
        self.array = array
    }
}
