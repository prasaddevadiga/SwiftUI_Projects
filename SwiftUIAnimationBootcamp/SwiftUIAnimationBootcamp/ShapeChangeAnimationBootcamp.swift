//
//  SizeChangeAnimationBootcamp.swift
//  SwiftUIAnimationBootcamp
//
//  Created by Prasad on 7/10/21.
//

import SwiftUI

struct Square: Shape {
    var width: CGFloat
    
    var animatableData: CGFloat {
        get {
            width
        }
        set {
            width = newValue
        }
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: width))
        path.addLine(to: CGPoint(x: width, y: width))
        path.addLine(to: CGPoint(x: width, y: 0))
        path.addLine(to: CGPoint(x: 0, y: 0))
        path.closeSubpath()
        
        return path
    }
}

struct ShapeChangeAnimationBootcamp: View {
    @State var width: CGFloat = 300
    let size = UIScreen.main.bounds
    
    var body: some View {
        ZStack(alignment:.center) {
            Square(width: width)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.red, Color.blue]),
                        startPoint: .leading,
                        endPoint: .trailing)
                )
                .offset(x: (size.width - width)/2, y: 100)
            
            Button("animate") {
                let springAnimation = Animation.spring(response: 0.25,
                                                       dampingFraction: 0.4,
                                                       blendDuration: 1)
                withAnimation(springAnimation){
                    width = CGFloat(Double.random(in: 100...300))
                }
            }
            .offset(y: 400)
        }
    }
}

struct SizeChangeAnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapeChangeAnimationBootcamp()
    }
}
