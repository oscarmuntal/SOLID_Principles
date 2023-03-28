//
//  LSP_Before.swift
//  SOLID_Principles
//
//  Created by Alex Nagy on 18.12.2021.
//

import Foundation

fileprivate class Rectangle {
    var width: Float = 0
    var height: Float = 0
    
    func set(width: Float) {
        self.width = width
    }
    
    func set(height: Float) {
        self.height = height
    }
    
    func calculateArea() -> Float {
        return width * height
    }
}

fileprivate class Square: Rectangle {
    override func set(width: Float) {
        self.width = width
        self.height = width
    }
    
    override func set(height: Float) {
        self.width = width
        self.height = width
    }
}

/// This breaks the Liskov Substitution Principle
fileprivate func setSizeAndPrintArea(of rectangle: Rectangle) {
    rectangle.set(height: 5)
    rectangle.set(width: 4)
    print(rectangle.calculateArea())
}

fileprivate func example() {
    let rectangle = Rectangle()
    setSizeAndPrintArea(of: rectangle)  // prints 20
    
    let square = Square()
    setSizeAndPrintArea(of: square)     // prints 16
}
