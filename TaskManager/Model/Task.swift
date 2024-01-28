//
//  Task.swift
//  TaskManager
//
//  Created by March Tala on 1/24/24.
//

import Foundation

struct Task: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var isCompleted: Bool
    var dueDate: Date
    var details: String?
    
    init(title: String, isCompleted: Bool = false, dueDate: Date = Date(), details: String? = nil) {
        self.title = title
        self.isCompleted = isCompleted
        self.dueDate = dueDate
        self.details = details
    }
    
    static func example() -> Task {
        Task(title: "Buy milk", dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!)
    }
    
    static func examples() -> [Task] {
        [
            Task(title: "Description 11..."),
            Task(title: "Description 2...", isCompleted: true),
            Task(title: "Description 3...", dueDate: Calendar.current.date(byAdding: .day, value: 1, to: Date())!),
            Task(title: "Sample random task 1"),
            Task(title: "Sample random task 2"),
            Task(title: "Sample random task 3"),
            Task(title: "Sample random task 4", isCompleted: true, dueDate: Calendar.current.date(byAdding: .day, value: 1, to: Date())!),
            Task(title: "Sample random task 5"),
            Task(title: "Sample random task 6", isCompleted: true, dueDate: Calendar.current.date(byAdding: .day, value: 1, to: Date())!),
            Task(title: "Sample random task 7"),
            Task(title: "Sample random task 8"),
        ]
    }
    
}
