//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Metin Atalay on 23.04.2022.
//

import SwiftUI

struct HeaderView: View {
    
    // MARK: - PROPERTIES
    
    @Binding var showGuideView: Bool
    @Binding var showInfoView: Bool
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button {
                showInfoView.toggle()
            } label: {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(.primary)
            .sheet(isPresented: $showInfoView) {
                InfoView()
            }

            Spacer()
            
           Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            Spacer()
            
            Button(action: {
              // ACTION
              playSound(sound: "sound-click", type: "mp3")
            //  self.haptics.notificationOccurred(.success)
              self.showGuideView.toggle()
            }) {
              Image(systemName: "questionmark.circle")
                .font(.system(size: 24, weight: .regular))
            }
            .accentColor(Color.primary)
            .sheet(isPresented: $showGuideView) {
              GuideView()
            }
            
            
        }
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    @State static var showGuide: Bool = false
    @State static var showInfoView: Bool = false
    
    static var previews: some View {
        
        HeaderView(showGuideView: $showGuide, showInfoView: $showInfoView)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
