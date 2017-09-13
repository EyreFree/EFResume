//
//  File.swift
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
