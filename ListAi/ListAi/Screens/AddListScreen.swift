//
//  AddListScreen.swift
//  ListAi
//
//  Created by Paulo Ferreira on 29/06/2024.
//

import SwiftUI

struct AddListScreen: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    
    @State private var listName: String = ""
    @State private var color: Color = .blue
    
    var body: some View {
        VStack {
            Image(systemName: "line.3.horizontal.circle.fill")
                .font(.system(size: 80))
                .foregroundStyle(color)
            TextField("List name", text: $listName)
                .textFieldStyle(.roundedBorder)
                .padding([.leading, .trailing], 44)
            ColorPickerView(selectedColor: $color)
                .padding([.leading, .trailing], 30)
        }
        .navigationTitle("New List")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("Close") {
                    dismiss()
                }
            }
            ToolbarItem(placement: .topBarTrailing) {
                Button("Done") {
                    guard let hex = color.toHex() else { 
                        print("error converting to hex")
                        return }
                    let myList = MyList(name: listName, iconColorCode: hex)
                    context.insert(myList)
                    dismiss()
                }
            }
        }
    }
}

#Preview { @MainActor in
    NavigationStack {
        AddListScreen()
    }.modelContainer(previewContainer)
}
