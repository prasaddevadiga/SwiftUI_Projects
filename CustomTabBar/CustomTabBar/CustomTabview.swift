//
//  CustomTabview.swift
//  CustomTabBar
//
//  Created by Prasad on 6/12/21.
//

import SwiftUI

var tabs = ["house", "envelope", "folder", "gearshape"]

struct CustomTabview: View {
    @State var selectedTab = "house"
    @State var edge = UIApplication.shared.windows.first?.safeAreaInsets
    var body: some View {
        ZStack(alignment:Alignment(horizontal: .center, vertical: .bottom)) {
            
            TabView(selection: $selectedTab) {
                HomeView()
                    .tag("house")
                EmailView()
                    .tag("envelope")
                Folder()
                    .tag("folder")
                Setting()
                    .tag("gearshape")
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .ignoresSafeArea(.all, edges: .bottom)
            
            HStack(spacing: 0) {
                ForEach(tabs, id: \.self) { image in
                    TabItem(image: image, selectedTab: $selectedTab)
                    
                    if image != tabs.last {
                        Spacer(minLength: 0)
                    }
                }
            }
            .padding(.horizontal, 25)
            .padding(.vertical, 20)
            .background(Color.white)
            .clipShape(Capsule())
            .shadow(color: Color.gray.opacity(0.25), radius: 5, x: 10.0, y: 10.0)
            .shadow(color: Color.gray.opacity(0.25), radius: 5, x: -10.0, y: -10.0)
            .padding(.horizontal)
            .padding(.bottom, edge?.bottom == 0 ? 20: 0)
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
        .background(Color.purple.opacity(0.35).ignoresSafeArea(.all, edges: .all))
    }
}
struct CustomTabview_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabview()
    }
}
