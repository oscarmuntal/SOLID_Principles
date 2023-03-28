//
//  DIP_Before.swift
//  SOLID_Principles
//
//  Created by Alex Nagy on 18.12.2021.
//

import Foundation

fileprivate struct Employee {
    func work() {
        print("Working...")
    }
}

/// This Employer only can manage Employees
fileprivate struct Employer {
    var employees: [Employee]
    
    func manage() {
        employees.forEach { employee in
            employee.work()
        }
    }
}

fileprivate func example() {
    let employer = Employer(employees: [Employee()])
    employer.manage()
}


