//
//  BindingBootcamp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/28/21.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}

struct ButtonView: View {
    @Binding var backgroundColor: Color
    @Binding var title: String
    @State var buttonColor: Color = Color.black
    
    var body: some View {
        Button(action: {
            backgroundColor = Color.orange
            buttonColor = Color.blue
            title = "updated title"
        }, label: {
            Text("button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal, 20)
                .background(buttonColor)
                .cornerRadius(10)
            
        })
    }
}
