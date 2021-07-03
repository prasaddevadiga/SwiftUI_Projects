//
//  StateBootcamp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/27/21.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var count: Int = 0
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Title")
                    .font(.largeTitle)
                
                Text("Count \(count))")
                    .font(.headline)
                    .underline()
                
                HStack {
                    Button("button1") {
                        backgroundColor = Color.purple
                        count += 1
                    }
                    
                    Button("button2") {
                        backgroundColor = Color.orange
                        count -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
