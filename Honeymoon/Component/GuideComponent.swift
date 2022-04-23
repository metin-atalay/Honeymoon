//
//  GuideComponent.swift
//  Honeymoon
//
//  Created by Metin Atalay on 23.04.2022.
//

import SwiftUI

struct GuideComponent: View {
    
    // MARK: - PROPERTIES
    
    var title: String
    var subtitle: String
    var description: String
    var icon: String
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(.pink)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(title.uppercased())
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    Spacer()
                    
                    Text(subtitle.uppercased())
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundColor(.pink)
                    
                }
                Divider().padding(.bottom, 4)
                Text(description)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical:   true)
            }
            
        }
    }
}

struct GuideComponent_Previews: PreviewProvider {
    static var previews: some View {
        GuideComponent(
            title: "Title",
            subtitle: "Swipe right",
            description: "This is a placeholder sentence. This is a placeholder sentence. This is a placeholder sentence.",
            icon: "heart.circle")
            .previewLayout(.sizeThatFits)
    }
}
