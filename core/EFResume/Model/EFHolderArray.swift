//
//  EFHolderArray.swift
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
