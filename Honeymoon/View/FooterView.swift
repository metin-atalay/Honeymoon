//
//  FooterView.swift
//  Honeymoon
//
//  Created by Metin Atalay on 23.04.2022.
//

import SwiftUI

struct FooterView: View {
    
    // MARK: - PROPERTIES
    
    @Binding var showBookingAlert: Bool  
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: "xmark.circle")
                .font(.system(size: 24, weight: .light))
            
            Spacer()
            
            Button {
                self.showBookingAlert.toggle()
            } label: {
                Text("Book Destination".uppercased())
                    .font(.system(.subheadline, design: .rounded))
                    .fontWeight(.heavy)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 12)
                    .tint(.pink)
                    .background(
                        Capsule().stroke(Color.pink, lineWidth: 2)
                    )
            }
            .accentColor(.primary)
            
            Spacer()
            
            Image(systemName: "heart.circle")
                .font(.system(size: 24, weight: .light))
            
        }
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    
    @State static var showAlert:Bool = false
    
    static var previews: some View {
        FooterView(showBookingAlert: $showAlert)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
