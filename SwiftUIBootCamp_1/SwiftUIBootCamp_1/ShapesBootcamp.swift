//
//  ShapesBootCamp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/26/21.
//

import SwiftUI

struct ShapesBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
//        Rectangle()
//        Capsule(style: .circular)
//        Ellipse()
//        Circle()
//            .fill(Color.red)
//            .foregroundColor(.red)
//            .stroke()
//            .stroke(Color.orange)
//            .stroke(Color.purple, lineWidth: 10)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 10, lineCap: .round, dash: [20]))
//            .trim(from: 0.5, to: 1.0)
//            .stroke(Color.green, lineWidth: 20)
            .frame(width: 300, height: 200)
        
        


            
    }
}

struct ShapesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootCamp()
    }
}
