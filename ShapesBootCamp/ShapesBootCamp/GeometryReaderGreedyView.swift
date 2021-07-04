//
//  ContentView.swift
//  ShapesBootCamp
//
//  Created by Prasad on 7/3/21.
//

import SwiftUI

private let size = 200
private let numbrOfLayers = 20
private let stepSize = 25

struct GeometryReaderGreedyView: View {
    @State var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            ForEach(0..<numbrOfLayers) { index in
                Pyramid()
                    .shadow(radius: 10)
                    .rotationEffect(isAnimating ? Angle(degrees: Double(90.0)) : Angle(degrees: Double(0.0)))
                    .frame(width: self.sizeForIndex(index: index), height: self.sizeForIndex(index: index))
                    .animation(
                        Animation
                            .easeIn(duration: 2)
//                            .repeatForever()
                            .repeatForever(autoreverses: true)
                            .delay(delayForIndex(index: index))
                    )
            }
            .onAppear(perform: {
                self.isAnimating.toggle()
            })
        }
        .padding(100)
        .drawingGroup()
    }
    
    func delayForIndex(index: Int) -> Double {
        Double(numbrOfLayers - index) * 0.2
    }
    
    func sizeForIndex(index: Int) -> CGFloat {
        CGFloat((numbrOfLayers - index) * stepSize )
    }
}


private let gradient = LinearGradient(gradient: Gradient(colors: [Color.red, Color.yellow]),
                                      startPoint: .topLeading, endPoint: .bottomTrailing)
struct Pyramid: View {
    var body: some View {
        GeometryReader { proxy in
            RoundedRectangle(cornerRadius: proxy.size.width * 0.2)
                .fill(gradient)
        }
    }
}
struct GeometryReaderGreedyView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderGreedyView()
    }
}
