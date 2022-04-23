//
//  CardView.swift
//  Honeymoon
//
//  Created by Metin Atalay on 23.04.2022.
//

import SwiftUI

struct CardView: View, Identifiable {
    // MARK: - PROPERTIES
    
    let id = UUID()
    let honeymoon: Destination
    
    // MARK: - BODY
    var body: some View {
        Image(honeymoon.image)
            .resizable()
            .cornerRadius(24)
            .scaledToFit()
            .frame(minWidth: 0, maxWidth: .infinity)
            .overlay(
                VStack(alignment: .center, spacing: 12) {
                    Text(honeymoon.place.uppercased())
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .shadow(radius: 1)
                        .overlay(
                            Rectangle().fill(.white)
                                .frame(height: 1),
                            alignment: .bottom
                        )
                    
                    Text(honeymoon.country.uppercased())
                        .foregroundColor(.black)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .frame(minWidth: 85)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(Capsule().fill(.white))
                    
                } //: VSTACK
                    .frame(minWidth: 280)
                    .padding(.bottom, 50),
                alignment: .bottom
                
            )
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(honeymoon: honeymoonData[0])
            .previewLayout(.fixed(width: 375, height: 600))
    }
}