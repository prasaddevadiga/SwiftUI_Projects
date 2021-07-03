//
//  ContentView.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/26/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color.red)
            .padding([.top, .leading, .trailing])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
