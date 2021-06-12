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
                    .padding(.horizontal)
                    .background(Color(course.asser))
                HStack {
                    VStack(alignment:.leading, spacing: 8) {
                        Text(course.name)
                            .font(.title3)
                            .fontWeight(.heavy)
                        Text("\(course.numCourse) courses")
                            .fontWeight(.medium)
                    }
                    .padding(.bottom, 8)
                    .foregroundColor(.black)
                    Spacer(minLength: 0)
                }
                .padding(.horizontal)
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
