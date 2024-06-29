//
//  MyListsScreen.swift
//  ListAi
//
//  Created by Paulo Ferreira on 29/06/2024.
//

import SwiftUI

struct MyListsScreen: View {
    
    let myLists = ["Reminders", "Groceries", "Entertainment"]
    
    var body: some View {
        List {
            Text("My Lists")
                .font(.largeTitle)
                .bold()
            
            ForEach(myLists, id: \.self) { list in
                HStack {
                    Image(systemName: "line.3.horizontal.circle.fill")
                        .font(.system(size: 32))
                    Text(list)
                }
            }
            Button(action: {
                
            }, label: {
                Text("Add List")
                    .foregroundStyle(.blue)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }).listRowSeparator(.hidden)
        }.listStyle(.plain)
    }
}

#Preview {
    NavigationStack {
        MyListsScreen()
    }
}