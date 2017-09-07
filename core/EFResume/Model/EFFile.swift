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
    var content: String?

    var lines: [String] = []

    init(path: String) {
        self.path = path

        do {
            content = try String(
                contentsOfFile: path,
                encoding: String.Encoding.utf8
            )
            onLines()
        } catch {
            content = nil
            EFError.shared.setError(error: error)
        }
    }

    func onLines() {
        lines = content?.components(separatedBy: "\n").map({
            $0.trimmingCharacters(in: .whitespacesAndNewlines)
        }).filter { $0 != "" } ?? []
    }
}
