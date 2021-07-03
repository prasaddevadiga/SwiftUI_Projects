//
//  SafeAreaBootcamp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/27/21.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
//        ZStack {
//            // background
//            Color.red
//                .ignoresSafeArea(.all)
//
//            // foreground
//            VStack {
//                Text("Hello, World!")
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//        }
        
        ScrollView() {
            Text("Title gorse here")
                .font(.largeTitle)
                .frame(maxWidth: .infinity,alignment: .leading)
            
            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .frame(height: 200)
                    .shadow(radius: 10)
                    .padding()

            }
            
        }
        .background(
            Color.red
                .ignoresSafeArea(.all)
        )
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
