//
//  ISP_Before.swift
//  SOLID_Principles
//
//  Created by Alex Nagy on 18.12.2021.
//

import Foundation

fileprivate protocol Worker {
    func work()
    func eat()
}

fileprivate class Human: Worker {
    func work() {
        print("Working...")
    }
    
    func eat() {
        print("Eating...")
    }
}

fileprivate class Robot: Worker {
    func work() {
        print("Working...")
    }
    
    /// Here we have a function that if it's going to be executed it shouldn't be able to be executed
    func eat() {
        fatalError("Robot does not eat!")
    }
}

fileprivate func example() {
    let human = Human()
    human.work()         // prints "Working..."
    human.eat()          // prints "Eating..."

    /// Interface Segregation: No code should be forced to depend on methods it doesn't use
    let robot = Robot()
    robot.work()
    robot.eat()     /// This robot is forced to use the eat function but it does not use it
}


