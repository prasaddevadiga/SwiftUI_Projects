//
//  ExtractedFunctionBootcampp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/27/21.
//

import SwiftUI

struct ExtractedFunctionBootcampp: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press me")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

struct ExtractedFunctionBootcampp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionBootcampp()
    }
}
