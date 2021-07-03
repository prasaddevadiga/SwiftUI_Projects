//
//  ExtractedViewsBootcampp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/27/21.
//

import SwiftUI

struct ExtractedViewsBootcamp: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            Myitem(color: .red, title: "Apple", count: 10)
            Myitem(color: .orange, title: "Orange", count: 20)
            Myitem(color: .yellow, title: "Bananas", count: 5)
        }
    }
}

struct ExtractedViewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedViewsBootcamp()
    }
}

struct Myitem: View {
    let color: Color
    let title: String
    let count: Int
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .font(.headline)
        .foregroundColor(.white)
        .padding()
        .background(color)
        .cornerRadius(15)
    }
}
