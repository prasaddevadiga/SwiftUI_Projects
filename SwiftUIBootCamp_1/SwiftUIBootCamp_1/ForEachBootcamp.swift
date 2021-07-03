//
//  ForEachBootcamp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/27/21.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    var data: [String] = ["Hello", "Hi", "Namaskar"]
    
    var body: some View {
        VStack {
            ForEach(0..<5) { index in
                HStack{
                    Circle()
                        .frame(width: 50, height: 50)
                    Text("Hi : \(index)")
                        .padding()
                        .background(Color.orange)
                }
            }
            
            ForEach(data.indices) { index in
                    Text("NEW ITEM: \(data[index])")
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
