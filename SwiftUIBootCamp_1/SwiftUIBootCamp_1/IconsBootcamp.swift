//
//  IconsBootCamp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/26/21.
//

import SwiftUI

struct IconsBootCamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
//            .font(.largeTitle)
//            .font(.system(size: 50))
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .foregroundColor(.orange)
            .frame(width: 300, height: 300)
    }
}

struct IconsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootCamp()
    }
}
