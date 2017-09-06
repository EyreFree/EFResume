//
//  File.swift
//  EFResume
//
//  Created by EyreFree on 2017/9/6.
//  Copyright © 2017年 eyrefree. All rights reserved.
//

import Foundation

class EFError {

    static let shared = EFError()

    var content: String = ""

    func setError(error: Error) {
        self.content = error.localizedDescription

        finish()
    }

    func setError(error: String) {
        self.content = error

        finish()
    }

    func finish() {
        print(content)
        // exit(1)
    }
}
