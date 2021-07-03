//
//  GradientsBootCamp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/26/21.
//

import SwiftUI

struct GradientsBootCamp: View {
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))]),
                        startPoint: .topLeading,
                        endPoint: .bottom)
                )
                .frame(width: 300, height: 200)
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))]),
                        center: .topLeading,
                        startRadius: 0,
                        endRadius: 400)
                )
                .frame(width: 300, height: 200)
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    AngularGradient(
                        gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))]),
                        center: .topTrailing,
                        angle: .degrees(180 + 45))
                )
                .frame(width: 300, height: 200)
            
        }
    }
}

struct GradientsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootCamp()
    }
}
