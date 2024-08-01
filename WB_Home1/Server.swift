//
//  Server.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 01.08.2024.
//

import Foundation

actor Server {
    private var clients: [Client] = []
    
    func addClient(_ client: Client) {
        clients.append(client)
    }
    
    func distributeTasks(tasks: [String]) async {
        for (index, task) in tasks.enumerated() {
            let clientIndex = index % clients.count
            let client = clients[clientIndex]
            do {
                let result = try await client.processTask(task)
                print("Result from \(client.id): \(result)")
            } catch {
                print("Error processing task on client \(client.id): \(error)")
            }
        }
    }
    
    func getAllResults() async -> [String] {
        var allResults: [String] = []
        
        for client in clients {
            allResults.append(contentsOf: await client.getResults())
        }
        
        return allResults
    }
}
