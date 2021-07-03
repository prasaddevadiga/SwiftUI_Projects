//
//  ButtonBootcamp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/27/21.
//

import SwiftUI

struct ButtonBootcamp: View {
    @State var title = "my title"
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            Button("Hello, World!") {
                self.title =  "button changed"
            }
            .accentColor(.red)
            .padding()
            
            Button(action: {
                self.title =  "button 2 pressed"
            }, label: {
                Text("save".uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                    )
                    .shadow(radius: 5 )
            })
            
            Button(action: {
                
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color(#colorLiteral(red: 0.5807225108, green: 0.066734083, blue: 0, alpha: 1)))
                    )
            })
            
            Button(action: {
                
            }, label: {
                Text("Finish")
                    .foregroundColor(.gray)
                    .font(.caption)
                    .bold()
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
                
            })
        }
    }
}

struct ButtonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootcamp()
    }
}
