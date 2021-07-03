//
//  ImagesBootCamp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/26/21.
//

import SwiftUI

struct ImagesBootCamp: View {
    var body: some View {
        Image("sachin")
            .resizable()
//            .aspectRatio(contentMode: .fill)
            .scaledToFill()
            .frame(width: 300, height: 200)
//            .clipped()
//            .cornerRadius(30)
//            .clipShape(Circle())

            
    }
}

struct ImagesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ImagesBootCamp()
    }
}
