//
//  ColorPickerView.swift
//  ListAi
//
//  Created by Paulo Ferreira on 29/06/2024.
//

import SwiftUI

struct ColorPickerView: View {
    
    @Binding var selectedColor: Color
    let colors: [Color] = [.red, .green, .blue, .yellow, .orange, .purple]
    
    var body: some View {
        HStack {
            ForEach(colors, id: \.self) { color in
                ZStack {
                    Circle().fill()
                        .foregroundColor(color)
                        .padding(2)
                    Circle()
                        .strokeBorder(selectedColor == color ? .gray: .clear, lineWidth: 4)
                        .scaleEffect(CGSize(width: 1.2, height: 1.2))
                }.onTapGesture {
                    selectedColor = color
                }
            }
        }.padding()
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 100)
            .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView(selectedColor: .constant(.yellow))
    }
}
