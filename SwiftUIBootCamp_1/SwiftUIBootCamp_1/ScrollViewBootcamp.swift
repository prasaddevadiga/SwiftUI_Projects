//
//  ScrollViewBootcamp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/27/21.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView() {
            LazyVStack {
                ForEach(0..<10) { index in
                    
                    ScrollView(.horizontal, showsIndicators: true) {
                        LazyHStack {
                            ForEach(0..<10) { index in
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                    .padding()
                            }
                        }
                    }
                    
                }
            }
        }
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
