//
//  PreviewContainer.swift
//  ListAi
//
//  Created by Paulo Ferreira on 29/06/2024.
//

import Foundation
import SwiftData

@MainActor
var previewContainer: ModelContainer = {
    let container = try! ModelContainer(for: MyList.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
    
    for myList in SampleData.myLists {
        container.mainContext.insert(myList)
    }
    
    return container
}()

struct SampleData {
    static var myLists: [MyList] {
        return [MyList(name: "Reminders", iconColorCode: "#2ecc71"), MyList(name: "Backlog", iconColorCode: "#9b59b6")]
    }
}
