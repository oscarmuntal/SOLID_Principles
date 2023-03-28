//
//  ISP_After.swift
//  SOLID_Principles
//
//  Created by Alex Nagy on 18.12.2021.
//

/*:
 ### Interface Segregation Principle
 [Wikipedia](https://en.wikipedia.org/wiki/Interface_segregation_principle)
 
 "A Client should not be forced to implement an interface that it doesn’t use."
 
Clients should not be forced to depend upon interfaces that they do not use. No code should be forced to depend on methods it does not use.
 
 */

import Foundation

fileprivate protocol Workable {
    func work()
}

fileprivate protocol Feedable {
    func eat()
}

fileprivate class Human: Workable, Feedable {
    func work() {
        print("Working...")
    }
    
    func eat() {
        print("Eating...")
    }
}

fileprivate class Robot: Workable {
    func work() {
        print("Working...")
    }
}

fileprivate func example() {
    let human = Human()
    human.work()        // prints "Working..."
    human.eat()         // prints "Eating..."
    
    let robot = Robot()
    robot.work()
//    robot.eat()       // Not possible to call this method from Robot class because it doesn't need it
}
