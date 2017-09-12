//
//  EFHolderMap.swift
//  EFResume
//
//  Created by EyreFree on 2017/9/12.
//  Copyright © 2017年 eyrefree. All rights reserved.
//

import Foundation

class EFHolderMap: EFHolder {

    var dictionary: Dictionary<String, Any> = [:]
    var processor: ((Dictionary<String, Any>) -> String)?

    init(_ text: String, _ processor: @escaping (Dictionary<String, Any>) -> String) {
        super.init(text)
        self.processor = processor
    }

    private override init(_ text: String) {
        fatalError("This method should not be called!")
    }

    override func generate() -> String {
        return processor?(dictionary) ?? ""
    }

    func set(_ dictionary: Dictionary<String, Any>) {
        self.dictionary = dictionary
    }
}
