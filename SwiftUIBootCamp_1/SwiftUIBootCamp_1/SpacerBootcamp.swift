//
//  SpacerBootcamp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/26/21.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        HStack {
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 100, height: 100)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .frame(width: 100, height: 100)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
        }
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
