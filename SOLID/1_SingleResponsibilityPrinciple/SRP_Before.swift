//
//  SRP_Before.swift
//  SOLID_Principles
//
//  Created by Alex Nagy on 18.12.2021.
//

import Foundation

/// This class has more than one single responsibility so it violates the Single Responsibility principle.
/// It's responsible to load the data, then to parse this data and finally to save this data.
/// It is neither maintainable nor extendable

fileprivate class DataHandler {
    func handle() {
        let data = loadData()
        let list = parse(data: data)
        save(model: list)
    }
    
    func loadData() -> Data {
        return Data()
    }
    
    func parse(data: Data) -> Any {
        return ""
    }
    
    func save(model: Any) {
        // save here
    }
}
