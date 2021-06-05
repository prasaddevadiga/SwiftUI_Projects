//
//  OrderView.swift
//  MenuList
//
//  Created by Prasad on 6/5/21.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(order.items) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("Cost: \(item.price)")
                        }
                    }
                }
                Section {
                    NavigationLink(destination: Text("Check out")) {
                        Text("Place order")
                    }
                }
            }
            .navigationTitle("Order")
            .listStyle(InsetGroupedListStyle())
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    
    static var previews: some View {
        OrderView()
            .environmentObject(Order())
    }
}
