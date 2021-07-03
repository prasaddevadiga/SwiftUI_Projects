//
//  ColorBootCamp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/26/21.
//

import SwiftUI

struct ColorBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color.primary
//                Color(#colorLiteral(red: 0.7035949475, green: 0.5901178154, blue: 0.7726390696, alpha: 1))
//                Color(UIColor.secondarySystemBackground)
                Color("custom")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
            .shadow(color: Color("custom").opacity(0.3), radius: 10, x: -30.0, y: 30.0)
        
    }
}

struct ColorBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootCamp()
            
            
    }
}
