//
//  StacksBootcamp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/26/21.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        ZStack(alignment:.top) {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350, height: 500, alignment: .center)
            VStack(alignment:.leading) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                
                HStack(alignment: .bottom) {
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width: 50, height: 50)
                    
                    Rectangle()
                        .fill(Color.pink)
                        .frame(width: 75, height: 75)
                    
                    Rectangle()
                        .fill(Color.pink)
                        .frame(width: 25, height: 25)
                }
                .background(Color.white)
            }
            .background(Color.black)
            
        }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
