//
//  PaddingBootcamp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/26/21.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            Text("Thispdeofwe fweoifwe fwoeifhwef wefiuhwgowe gwoeghweg weogihweg wegoiwegnw egwegf prasad")
                .multilineTextAlignment(.leading)
        }
        .padding()
        .padding(.vertical)
        .background(
            Color.white
                .cornerRadius(25)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 0.0, y: 10)
        )
    }
}

struct PaddingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootcamp()
    }
}
