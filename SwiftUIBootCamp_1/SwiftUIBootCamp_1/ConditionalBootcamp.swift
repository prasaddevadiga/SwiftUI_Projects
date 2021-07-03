//
//  ConditionalBootcamp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/28/21.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle = true
    
    @State var isLoading = true
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button("Circular button : \(showCircle.description)") {
                showCircle.toggle()
            }
            if showCircle{
                Circle()
                    .frame(width: 100, height: 100)
            } else {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            Spacer()
            Button("Is loading ? : \(isLoading.description)") {
                isLoading.toggle()
            }
            if isLoading {
                ProgressView("Loading")
            }
            Spacer()
        }
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
