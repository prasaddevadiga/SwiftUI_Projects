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
        
        GeometryReader { geometry in
            ZStack(alignment: .bottomLeading) {
                TabView {
                    ContentView()
                        .tabItem {
                            Label("Menu", systemImage: "list.dash")
                        }.tag(0)
                    OrderView()
                        .tabItem {
                            Label("Order", systemImage: "square.and.pencil")
                        }.tag(1)
                }
                
                ZStack {
                    Circle()
                        .foregroundColor(.red)

                        Text("\(self.order.items.count)")
                        .foregroundColor(.white)
                        .font(Font.system(size: 12))
                }
                .frame(width: 15, height: 15)
                .offset(x: 3.0 * ( geometry.size.width / 4 ) + 2, y: -30)
                .opacity(self.order.items.count == 0 ? 0 : 1.0)
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
