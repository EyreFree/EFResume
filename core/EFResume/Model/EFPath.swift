//
//  EFPath.swift
//  EFResume
//
//  Created by EyreFree on 2017/9/6.
//  Copyright © 2017年 eyrefree. All rights reserved.
//

import Foundation

struct EFPath {

    static var base = FileManager.default.currentDirectoryPath

    static var resume: String {
        get {
            return base + "/templates/resume.html.twig"
        }
    }
}
