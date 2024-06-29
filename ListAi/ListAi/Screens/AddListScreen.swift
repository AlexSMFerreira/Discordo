//
//  AddListScreen.swift
//  ListAi
//
//  Created by Paulo Ferreira on 29/06/2024.
//

import SwiftUI

struct AddListScreen: View {
    
    @State private var listName: String = ""
    
    var body: some View {
        VStack {
            Image(systemName: "line.3.horizontal.circle.fill")
                .font(.system(size: 80))
                .foregroundStyle(.blue)
            TextField("List name", text: $listName)
                .textFieldStyle(.roundedBorder)
                .padding([.leading, .trailing], 44)
        }
    }
}

#Preview {
    AddListScreen()
}
