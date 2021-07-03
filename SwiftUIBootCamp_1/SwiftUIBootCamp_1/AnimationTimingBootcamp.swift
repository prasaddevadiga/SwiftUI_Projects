//
//  AnimationTimingBootcamp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/28/21.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimating: Bool = false
    let timing: Double = 0.5
    
    var body: some View {
        VStack {
            Button("Animate") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 300 :50, height: 100)
                .animation(.spring(
                    response: 0.5,
                    dampingFraction: 0.7,
                            blendDuration: 1
                )
            )
//                .animation(Animation.linear(duration: timing))
//
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 300 :50, height: 100)
                .animation(Animation.easeIn(duration: timing))

            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 300 :50, height: 100)
                .animation(Animation.easeInOut(duration: timing))

            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 300 :50, height: 100)
                .animation(Animation.easeOut(duration: timing))
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 300 :50, height: 100)
                .animation(Animation.interactiveSpring())
            
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
