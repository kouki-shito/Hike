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
      VStack {
        //MARK: - HEAD

        VStack(alignment:.leading) {
          HStack {
            Text("Hiking")
              .fontWeight(.black)
              .font(.system(size: 52))
              .foregroundStyle(
                LinearGradient(
                  colors: [
                    .customGrayLight,
                    .customGrayMedium],
                  startPoint: .top, endPoint: .bottom)
              )

            Spacer()

            Button{
              print("Button Pressed")
            }label: {
              CustomBottonView()
            }

          }


          Text("Fun and enjoyable outdoor activity for friends and families.")
            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            .italic()
            .foregroundColor(.customGrayMedium)

        }//:HEADER
        .padding(.horizontal,30)

        //MARK: - MAIN CONTENT
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
        //MARK: - FOOTER
      }
    }//CARD
    .frame(width: 320,height: 570)

  }
}

#Preview {
  CardView()
}
