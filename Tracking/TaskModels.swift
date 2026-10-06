//
//  TaskModels.swift
//  Tracking
//
//  Created by Robert Vinson on 10/3/26.
//

import Foundation

struct TaskItem: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var isCompleted: Bool = false
}

struct TaskGroup: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var symbolName: String
    var tasks: [TaskItem]
}

// MOCK DATA for testing purposes
extension TaskGroup {
    static let sampleData: [TaskGroup] = [
        TaskGroup(title: "School", symbolName: "book.fill", tasks: [
            TaskItem(title: "Grade Assignments"),
            TaskItem(title: "Do discussion forums")
        ]),
        
        TaskGroup(title: "Home", symbolName: "house.fill", tasks: [
            TaskItem(title: "Buy Groceries", isCompleted: true),
            TaskItem(title: "Walk the dog")
        ])
    ]
}
