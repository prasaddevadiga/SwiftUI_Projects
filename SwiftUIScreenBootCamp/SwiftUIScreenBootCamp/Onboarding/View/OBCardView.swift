//
//  OBCardView.swift
//  SwiftUIScreenBootCamp
//
//  Created by Prasad on 7/3/21.
//

import SwiftUI

struct OBCardView: View {
    @Binding var isShowing: Bool
    
    let card: OnboardCard
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        VStack {
            HStack(alignment:.top) {
                Text(card.title)
                    .font(.largeTitle)
                Spacer()
                Button(action: {
                    withAnimation {
                        isShowing = false
                    }
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .font(.title)
                }
            }
            Spacer()
            Image(card.image)
                .resizable()
                .scaledToFit()
            Spacer()
            Text(card.text)
            Spacer()
            
        }
        .padding(.horizontal)
        .padding(.top, 10)
        .frame(width: width, height: height)
        .background(
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .fill(Color(.secondarySystemBackground))
                .shadow(radius: 10)
        )
    }
}

struct OBCardView_Previews: PreviewProvider {
    static let onboardSet = OnboardCardViewModel.previewContent()
    static var previews: some View {
        Group {
            OBCardView(isShowing: .constant(false),
                       card: onboardSet.cards[0],
                       width: 350,
                       height: 350)
                .previewLayout(.sizeThatFits)
            OBCardView(isShowing: .constant(false),
                       card: onboardSet.cards[0],
                       width: 450,
                       height: 550)
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
    }
}
