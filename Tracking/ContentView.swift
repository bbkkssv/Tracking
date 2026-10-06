//
//  ContentView.swift
//  Tracking
//
//  Created by Robert Vinson on 10/3/26.
//

import SwiftUI

struct ContentView: View {
    @State private var taskGroups = TaskGroup.sampleData
    @State private var selectedGroup: TaskGroup?
    @State private var columnVisibility: NavigationSplitViewVisibility = .all
    
    var body: some View {
        NavigationSplitView(columnVisibility: $columnVisibility) {
            List(selection: $selectedGroup) {
                ForEach(taskGroups) { group in
                    NavigationLink(value: group) {
                        Label(group.title, systemImage: group.symbolName)
                    }
                }
            }
            .navigationTitle(String(localized: "Task Groups"))
            .listStyle(.sidebar)
        } detail: {
            if let group = selectedGroup {
                if let index = taskGroups.firstIndex(where: {
                    $0.id == group.id
                }) {
                    TaskGroupDetailView(group: $taskGroups[index])
                }
            } else {
                ContentUnavailableView(String(localized: "Select a Group"), systemImage: "sidebar.left")
            }
        }
    }
}

//#Preview {
//    ContentView()
//}
