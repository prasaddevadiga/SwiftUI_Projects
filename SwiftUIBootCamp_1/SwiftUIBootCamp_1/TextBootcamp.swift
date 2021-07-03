//
//  TextBootCamp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/26/21.
//

import SwiftUI

struct TextBootCamp: View {
    var body: some View {
        Text("Hello, World! welcome to switUI bootcamp to learn more about swiftUI and I am enjoying it very well. Try it out")
//            .font(.title)
//            .font(.system(size: 24, weight: .bold, design: .serif))
//            .fontWeight(.medium)
//            .bold()
//            .underline()
//            .underline(true, color: .red)
//            .italic()
//            .strikethrough()
//            .strikethrough(true, color: .green)
//            .baselineOffset(2.0)
//            .kerning(10)
            .multilineTextAlignment(.leading)
            .foregroundColor(.blue)
            .frame(width: 200, height: 100, alignment: .center)
            .minimumScaleFactor(0.1)
            
    }
}

struct TextBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootCamp()
            .padding()
    }
}
