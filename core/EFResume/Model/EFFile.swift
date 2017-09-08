//
//  File.swift
//  EFResume
//
//  Created by EyreFree on 2017/9/6.
//  Copyright © 2017年 eyrefree. All rights reserved.
//

import Foundation

class EFFile {

    var path: String
    var content: String = ""

    init(path: String) {
        self.path = path
        do {
            content = try String(contentsOfFile: path, encoding: String.Encoding.utf8)
        } catch {
            EFError.shared.setError(error: error)
        }
    }

    func save() {
        do {
            try content.write(toFile: path, atomically: false, encoding: String.Encoding.utf8)
        } catch {
            EFError.shared.setError(error: error)
        }
    }
}
