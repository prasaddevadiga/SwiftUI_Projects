//
//  ItemRow.swift
//  MenuList
//
//  Created by Prasad on 6/5/21.
//

import SwiftUI

struct ItemRow: View {
    var item: MenuItem
    let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]

    var body: some View {
        HStack {
            Image(item.thumbnailImage)
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                .padding(8)
                
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                Text("$ \(item.price)")
                    .font(.subheadline)
            }
            Spacer()
            ForEach(item.restrictions, id: \.self) { restriction in
                Text(restriction)
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(5)
                    .background(colors[restriction, default: .black])
                    .clipShape(Circle())
                    .foregroundColor(.white)
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
