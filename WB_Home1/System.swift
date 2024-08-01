//
//  System.swift
//  WB_Home1
//
//  Created by Михаил Ганин on 01.08.2024.
//

import Foundation
@main

struct System {
    static func main() async {
        let server = Server()
        
// Создание клиентов
        let client1 = Client(id: "Client1")
        let client2 = Client(id: "Client2")
        
// Добавление клиентов на сервер
        await server.addClient(client1)
        await server.addClient(client2)
        
// Задачи для обработки
        let tasks = ["Task 1", "Task 2", "Task 3", "Task 4", "Task 5"]
        
// Распределение задач
        await server.distributeTasks(tasks: tasks)
        
// Получение результатов
        let results = await server.getAllResults()
        print("All results: \(results)")
    }
}
