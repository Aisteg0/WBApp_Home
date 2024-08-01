//
//  Client.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 01.08.2024.
//

import Foundation

actor Client {
    let id: String
    var results: [String] = []
    
    init(id: String) {
        self.id = id
    }
    
    func processTask(_ data: String) throws -> String {
// Симуляция обработки данных
        let success = Bool.random()
        if success {
            let result = "Processed: \(data) by \(id)"
            results.append(result)
            return result
        } else {
            throw NSError(domain: "ClientError", code: 1, userInfo: [NSLocalizedDescriptionKey: "Error processing task for client \(id)"])
        }
    }
    
    func getResults() -> [String] {
        return results
    }
}
