//
//  InitializerBootcamp.swift
//  SwiftUIBootCamp_1
//
//  Created by Prasad on 6/27/21.
//

import SwiftUI

enum Fruit {
    case apple
    case orange
    
    var fruitColor: Color {
        switch self {
            case .apple:
                return .red
            case .orange:
                return .orange
        }
    }
    
    var fruitName: String {
        switch self {
            case .apple:
                return "Apple"
            case .orange:
                return "Orange"
        }
    }
}

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let fruit: String
    let number: Int
        
    init(fruit: Fruit, count: Int) {
        self.number = count
        self.backgroundColor = fruit.fruitColor
        self.fruit = fruit.fruitName
    }
    
    var body: some View {
        VStack (spacing: 10){
            Text("\(number)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(fruit)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0.0, y: 0.0)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitializerBootcamp(fruit: .apple, count: 50)
            InitializerBootcamp(fruit: .orange, count: 150)
        }
        
    }
}
