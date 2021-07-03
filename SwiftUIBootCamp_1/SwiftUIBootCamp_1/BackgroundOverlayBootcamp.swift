//
//  BackgroundOverlayBootcamp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/26/21.
//

import SwiftUI

struct BackgroundOverlayBootcamp: View {
    var body: some View {
        
        VStack(spacing: 80) {
            Text("Hello, World!")
                .background(
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                        .frame(width: 100, height: 100, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing))
                        .frame(width: 120, height: 120, alignment: .center)
                )
            
            Circle()
                .fill(Color.pink)
                .frame(width: 100, height: 100, alignment: .center)
                .overlay(
                    Text("1")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                )
                .background(
                    Circle()
                        .fill(Color.purple)
                        .frame(width: 110, height: 110)
                )
            
            /// Original rectangle is in black color, blue rectangle is added as overlay and red rectandle is added as background
            
            Rectangle()
                .frame(width: 100, height: 100)
                .overlay(
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 50, height: 50, alignment: .center)
                    , alignment: .center
                )
                .background(
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 150, height: 150)
                    , alignment: .center
                )
            
            Image(systemName: "heart.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))]),
                                startPoint: .leading,
                                endPoint: .trailing)
                        )
                        .frame(width: 100, height: 100)
                        .shadow(color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)).opacity(0.5), radius: 10, x: 0.0, y: 10.0)
                        .overlay(
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 35, height: 35)
                                .overlay(
                                    Text("5")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                )
                                .shadow(color: Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)).opacity(0.5), radius: 10, x: 5, y: 5)
                            , alignment: .bottomTrailing)
                )
        }
    }
}

struct BackgroundOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundOverlayBootcamp()
    }
}
