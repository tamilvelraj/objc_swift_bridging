//
//  SwiftMath.swift
//  Objc2Swift
//
//  Created by Thamil Selvan V on 11/10/16.
//  Copyright © 2016 Thamil Selvan V. All rights reserved.
//

import UIKit
import ObjectiveC

@objc class SwiftMath: NSObject {
    
    func add(a: Int, b: Int) -> Int {
        return a+b;
    }
    
    func callObjcAdd(a: Int, b: Int) -> Int {
        let objcMath = ObjcMath.init()
        return objcMath.add(a, b);
    }

}
