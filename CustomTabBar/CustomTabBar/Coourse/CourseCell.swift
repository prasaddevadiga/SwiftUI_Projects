//
//  CourseCell.swift
//  CustomTabBar
//
//  Created by Prasad on 6/12/21.
//

import SwiftUI

struct CourseCell: View {
    var course: Course
    var body: some View {
        VStack {
            VStack {
                Image(course.asser)
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, 10)
                    .padding(.leading, 0)
                    .background(Color(course.asser))
                HStack {
                    VStack(alignment:.leading, spacing:12) {
                        Text(course.name)
                            .font(.title)
                        Text("\(course.numCourse) courses")
                    }
                    Spacer(minLength: 0)
                }
                .padding()
            }
            .background(Color.white)
            .cornerRadius(15)
            Spacer(minLength: 0)
        }
    }
}

struct CourseCell_Previews: PreviewProvider {
    static var previews: some View {
        CourseCell(course: Course(name: "Coding", numCourse: 12, asser: "coding"))
    }
}
