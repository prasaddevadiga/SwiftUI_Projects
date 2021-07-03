//
//  AnimationBootcamp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/28/21.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    var body: some View {
        VStack {
            
            Button(action: {
                withAnimation(.spring()) {
                    isAnimated.toggle()
                }
            }, label: {
                Image("Tendulkar")
                    .resizable()
                    .scaledToFill()
            })
            .frame(width: isAnimated ? 300 : 100, height: isAnimated ? 300: 100)
            .cornerRadius(isAnimated ? 25: 50)
            .rotationEffect(Angle(degrees: isAnimated ? 360 : 0 ))
            .offset(x: 0, y: isAnimated ? 300 : 0)
            .padding(.top, 100)
            Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
