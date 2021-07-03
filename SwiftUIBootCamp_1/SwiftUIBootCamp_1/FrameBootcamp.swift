//
//  FrameBootcamp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/26/21.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.green)
            .frame(width: 300)
            .background(Color.blue)
            .frame(height: 400)
            .background(Color.pink)
            .frame(maxWidth:.infinity)
            .background(Color.purple)
            .frame(maxHeight:.infinity)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color.orange, Color.blue]),
                    startPoint: .leading,
                    endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
            )
            .ignoresSafeArea()
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
