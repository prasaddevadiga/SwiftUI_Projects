//
//  TransitionBootcampp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/28/21.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack (alignment: .bottom){
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            if showView {
            RoundedRectangle(cornerRadius: 30)
                .frame(height: UIScreen.main.bounds.height / 2)
//                .transition(.move(edge: .bottom))
//                .transition(AnyTransition.scale.animation(.easeIn))
                .transition(.asymmetric(
                                insertion: .move(edge: .leading),
                                removal: .move(edge: .leading))
                )
                .animation(.spring())
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
