//
//  OCP_Before.swift
//  SOLID_Principles
//
//  Created by Alex Nagy on 18.12.2021.
//

import Foundation

/// This code works but it is not extendable nor maintainable because it breaks the second SOLID principle which is the Open Closed Principle.
fileprivate class PaymentManager {
    func makeCashPayment(amount: Double) {
        // perform
    }
    
    func makeVisaPayment(amount: Double) {
        // perform
    }
    
    func makeMasterCardPayment(amount: Double) {
        // perform
    }
}
