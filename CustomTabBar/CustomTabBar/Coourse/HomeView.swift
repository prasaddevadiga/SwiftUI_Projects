//
//  HomeView.swift
//  CustomTabBar
//
//  Created by Prasad on 6/12/21.
//

import SwiftUI

struct HomeView: View {
    @State var txt = ""
    @State var edge = UIApplication.shared.windows.first?.safeAreaInsets
    var body: some View {
        VStack {
            // Profile section
            HStack{
                VStack(alignment:.leading, spacing:10) {
                    Text("Hello Prasad")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("Lets upgrade your skill")
                }
                .foregroundColor(.black)
                Spacer()
                Button(action: {
                    
                }) {
                    Image("profile")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 50, height: 50)
                }
                
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    HStack(spacing:15) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        TextField("Search courses", text: $txt)
                    }
                    .padding(.vertical, 12)
                    .padding(.horizontal)
                    .background(Color.white)
                    .clipShape(Capsule())
                    
                    HStack {
                        Text("Categories")
                            .font(.title2)
                            .fontWeight(.bold)
                        Spacer()
                        Button(action: {}, label: {
                            Text("View all")
                        })
                    }
                    .padding(.top, 20)
                    .foregroundColor(.black)
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 10), count: 2), spacing:10) {
                        ForEach(courses) { cource in
                            NavigationLink(
                                destination: CourseDetailView(cource: cource)) {
                                CourseCell(course: cource)
                            }
                        }
                    }
                    .padding(.top)
                }
                .padding()
                .padding(.bottom, edge!.bottom + 70)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
