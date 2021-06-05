//
//  MainView.swift
//  MenuList
//
//  Created by Prasad on 6/5/21.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var order: Order
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            OrderView()
                .tabItem {
                    Label("Order \(order.items.count)", systemImage: "square.and.pencil")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(Order())
    }
}
