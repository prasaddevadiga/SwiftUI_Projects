//
//  DetailView.swift
//  CustomTabBar
//
//  Created by Prasad on 6/12/21.
//

import SwiftUI

struct CourseDetailView: View {
    var cource: Course
    var body: some View {
        VStack {
            Text(cource.name)
                .font(.title)
                .fontWeight(.bold)
        }
        .navigationTitle(cource.name)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Button(action: {
            
        }, label: {
//            Image(systemName: "menu")
//                .renderingMode(.template)
//                .foregroundColor(.gray)
        }))
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetailView(cource: Course(name: "Coding", numCourse: 12, asser: "coding"))
    }
}
