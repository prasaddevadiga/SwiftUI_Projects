//
//  ItemDetail.swift
//  MenuList
//
//  Created by Prasad on 6/5/21.
//

import SwiftUI

struct ItemDetail: View {
    let item: MenuItem
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            Text(item.description)
                .padding(8)
            Spacer()
            Button("Order this") {
                order.add(item: item)
            }
            .padding(15)
            .foregroundColor(.white)
            .font(.headline)
            .background(Color.blue)
            .cornerRadius(10)
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
        .padding(.bottom)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemDetail(item: MenuItem.example)
                .environmentObject(Order())
        }
    }
}
