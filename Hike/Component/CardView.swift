//
//  CardView.swift
//  Hike
//
//  Created by 市東 on 2024/04/21.
//

import SwiftUI

struct CardView: View {
  var body: some View {
    ZStack {
      CustomBackgroundView()
      ZStack {
        Circle()
          .fill(
          .linearGradient(
            colors: [
              Color.customIndigoMedium,
              Color.customSalmonLight,
            ],
              startPoint:.topLeading,
              endPoint:.bottomTrailing
            )
          )
          .frame(width: 256,height: 256)

        Image("image-1")
          .resizable()
          .scaledToFit()
      }
    }//CARD
    .frame(width: 320,height: 570)

  }
}

#Preview {
  CardView()
}