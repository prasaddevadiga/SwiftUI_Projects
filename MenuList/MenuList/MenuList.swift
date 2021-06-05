//
//  SwiftTryApp.swift
//  SwiftTry
//
//  Created by Prasad on 5/30/21.
//

import SwiftUI

@main
struct MenuList: App {
    @StateObject var order = Order()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
