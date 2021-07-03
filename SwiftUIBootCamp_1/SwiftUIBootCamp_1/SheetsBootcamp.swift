//
//  SheetsBootcamp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/28/21.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(20)
                    .background(Color.red)
                    .cornerRadius(10)
            })
            .fullScreenCover(isPresented: $showSheet) {
                // do not add conditional logic
                SecondScreen()
            }
//            .sheet(isPresented: $showSheet) {
//                SecondScreen()
//            }
        }
    }
}

struct SecondScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading ) {
            Color.gray.ignoresSafeArea()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
                    .cornerRadius(10)
            })
        }
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    @State var showSheet: Bool = true
    static var previews: some View {
        SheetsBootcamp()
//        SecondScreen()
    }
}
