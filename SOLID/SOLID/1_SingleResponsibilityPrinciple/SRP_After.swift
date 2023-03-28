//
//  SRP_After.swift
//  SOLID_Principles
//
//  Created by Alex Nagy on 18.12.2021.
//

/*:
 ## Single Responsibility Principle
 [Wikipedia](https://en.wikipedia.org/wiki/Single_responsibility_principle)

 "There should never be more than one reason for a class to change."
 
A module or a class should have only one responsibility, and that responsibility should be entirely encapsulated by that module/class.

 */

import Foundation

/// Here we have 3 classes with only one responsibility
fileprivate class APIHandler {
    func loadData() -> Data {
        return Data()
    }
}

fileprivate class ParseHandler {
    func parse(data: Data) -> Any {
        return ""
    }
}

fileprivate class StorageHandler {
    func save(model: Any) {
        // save here
    }
}

/// Here we have this class which handles all the previous three and has it's own single responsibility which is handling the three previous steps
fileprivate class DataHandler {
    let apiHandler: APIHandler
    let parseHandler: ParseHandler
    let storageHandler: StorageHandler
    
    init(apiHandler: APIHandler, parseHandler: ParseHandler, storageHandler: StorageHandler) {
        self.apiHandler = apiHandler
        self.parseHandler = parseHandler
        self.storageHandler = storageHandler
    }
    
    func handle() {
        let data = apiHandler.loadData()
        let model = parseHandler.parse(data: data)
        storageHandler.save(model: model)
    }
}
