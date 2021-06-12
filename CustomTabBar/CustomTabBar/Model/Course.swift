//
//  Course.swift
//  CustomTabBar
//
//  Created by Prasad on 6/12/21.
//

import Foundation

struct Course: Identifiable {
    var id = UUID().uuidString
    var name: String
    var numCourse: Int
    var asser: String
}

var courses = [
    Course(name: "Coding", numCourse: 12, asser: "coding"),
    Course(name: "Trading", numCourse: 19, asser: "trading"),
    Course(name: "Cooking", numCourse: 10, asser: "cooking"),
    Course(name: "Android", numCourse: 24, asser: "android"),
    Course(name: "Digital", numCourse: 11, asser: "digital")
    
]
