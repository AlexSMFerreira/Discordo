//
//  MyListsScreen.swift
//  ListAi
//
//  Created by Paulo Ferreira on 29/06/2024.
//

import SwiftUI
import SwiftData

struct MyListsScreen: View {
    
    @Query private var myLists: [MyList]
    @State private var isPresented: Bool = false
    
    var body: some View {
        List {
            Text("My Lists")
                .font(.largeTitle)
                .bold()
            
            ForEach(myLists) { list in
                HStack {
                    Image(systemName: "line.3.horizontal.circle.fill")
                        .font(.system(size: 32))
                        .foregroundStyle(Color(hex: list.iconColorCode))
                    Text(list.name)
                }
            }
            Button(action: {
                isPresented = true
            }, label: {
                Text("Add List")
                    .foregroundStyle(.blue)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }).listRowSeparator(.hidden)
        }.listStyle(.plain)
            .sheet(isPresented: $isPresented, content: {
                NavigationStack {
                    AddListScreen()
                }
            })
    }
}

#Preview {
    NavigationStack { @MainActor in
        MyListsScreen()
    }.modelContainer(previewContainer)
}
