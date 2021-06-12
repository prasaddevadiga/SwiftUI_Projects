//
//  TabItem.swift
//  CustomTabBar
//
//  Created by Prasad on 6/12/21.
//

import SwiftUI

struct TabItem: View {
    var image: String
    @Binding var selectedTab: String
    
    var body: some View {
        Button(action: {selectedTab = image}, label: {
            Image(systemName:image)
                .renderingMode(.template)
                .foregroundColor(selectedTab == image ? Color("tab") : Color.black.opacity(0.4))
                .frame(width: 44, height: 44)
        })
    }
}
