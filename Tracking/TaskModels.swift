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
        TaskGroup(title: String(localized: "School"), symbolName: "book.fill", tasks: [
            TaskItem(title: String(localized: "Grade Assignments")),
            TaskItem(title: String(localized: "Do discussion forums"))
        ]),
        
        TaskGroup(title: String(localized: "Home"), symbolName: "house.fill", tasks: [
            TaskItem(title: String(localized: "Buy Groceries"), isCompleted: true),
            TaskItem(title: String(localized: "Walk the dog"))
        ])
    ]
}
