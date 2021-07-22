//
//  BoxAnimatioonBootcamp.swift
//  SwiftUIAnimationBootcamp
//
//  Created by Prasad on 7/10/21.
//

import SwiftUI

struct BoxAnimationBootcamp: View {
    @State var alignment: SwiftUI.Alignment = Alignment.topTrailing
    var body: some View {
        ZStack(alignment: alignment) {
            ForEach(0..<15) { index in
                Rectangle()
                    .stroke()
                    .frame(width: CGFloat(index * 30), height: CGFloat(index * 30))
            }
        }
        .onAppear(perform: {
            animate()
        })
    }
    
    func animate() {
        var newAlignment: Alignment
        
        switch alignment {
            case .center:
                newAlignment = .topLeading
            case .topLeading:
                newAlignment = .topTrailing
            case .topTrailing:
                newAlignment = .bottomTrailing
            case .bottomLeading:
                newAlignment = .bottomLeading
            default:
                newAlignment = .center
        }
        
        withAnimation {
            alignment = newAlignment
        }
    }
}

struct BoxAnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BoxAnimationBootcamp()
    }
}
