//
//  ProgressAnimationBootcampp.swift
//  SwiftUIAnimationBootcamp
//
//  Created by Prasad on 7/11/21.
//

import SwiftUI

struct ProgressView: Shape {
    var progress: Double
    
    var animatableData: Double {
        get {
            progress
        }
        set {
            progress = newValue
        }
    }
    
    func path(in rect: CGRect) -> Path {
        let diameter = min(rect.width, rect.height)  - 24
        let radius = diameter/2
        let center = CGPoint(x: rect.origin.x + rect.width/2,
                             y: rect.origin.y + rect.height/2)
        
        return Path { path in
            path.addArc(center: center,
                        radius: radius,
                        startAngle: Angle(degrees: 0),
                        endAngle: Angle(degrees: 360 * progress ),
                        clockwise: false)
        }
    }
}

struct ProgressAnimationBootcampp: View {
    
    @State var progress: Double = 0.1
    var body: some View {
        ZStack {
            Circle()
                .strokeBorder(Color.red, lineWidth: 24)
                .shadow(radius: 10)
            Text(String(format: "%.f%%", progress * 100))
                .font(.system(size: 64, weight: .semibold, design: .rounded))
            ProgressView(progress: progress)
                .rotation(Angle(degrees: -90))
                .stroke(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.gray, Color.white]),
                        startPoint: .leading,
                        endPoint: .trailing), lineWidth: 12)
        }
        .onTapGesture {
            withAnimation {
                progress = min(1.0, progress + 0.125)
            }
        }
        .padding()
    }
}

struct ProgressAnimationBootcampp_Previews: PreviewProvider {
    static var previews: some View {
        ProgressAnimationBootcampp()
    }
}
