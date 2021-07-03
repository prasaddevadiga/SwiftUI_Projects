//
//  LazyVGridBootcamp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/27/21.
//

import SwiftUI

struct LazyVGridBootcamp: View {
    
    @State var switchView: Bool = false
    
    var gridItems: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    var listItems: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        VStack {
            Button(action: {
                switchView.toggle()
            }, label: {
                Text("Change view")
            })
            
            ScrollView {
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(height: 300)
                    .padding(.horizontal)
                LazyVGrid(
                    columns: switchView ? gridItems: listItems,
                    alignment: .center,
                    spacing: nil,
                    pinnedViews: [.sectionHeaders]) {
                    
                    // First section with red grid
                    Section(header:
                                Text("First")
                                .frame(maxWidth:.infinity)
                                .padding()
                                .background(Color.red)
                                .shadow(color: Color.red.opacity(0.5), radius: 10, x: 0.0, y: 0.0)
                                .padding()
                    ) {
                        ForEach(0..<20) { index in
                            ZStack {
                                Rectangle()
                                    .fill(Color.red)
                                    .frame(height: 100)
                                Text("\(index)")
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                            }
                        }
                    }
                        // second section with green grid
                        Section(header:
                                    Text("Second")
                                    .frame(maxWidth:.infinity)
                                    .padding()
                                    .background(Color.green)
                                    .shadow(color: Color.green.opacity(0.5), radius: 10, x: 0.0, y: 0.0)
                                    .padding()
                        ) {
                            ForEach(0..<20) { index in
                                ZStack {
                                    Rectangle()
                                        .fill(Color.green)
                                        .frame(height: 100)
                                    Text("\(index)")
                                        .font(.largeTitle)
                                        .foregroundColor(.white)
                                }
                            }
                        }
                    }
                .padding(.horizontal,8)
            }
        }
    }
}

struct LazyVGridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridBootcamp()
    }
}
