//
//  CardView.swift
//  Hike
//
//  Created by 市東 on 2024/04/21.
//

import SwiftUI

struct CardView: View {
  //MARK: - Properties
  @State private var imageNumber : Int = 1
  @State private var randomNumber : Int = 1
  @State private var isShowingSheet : Bool = false

  //MARK: -FUNCTIONS
  func randomImage(){
    repeat{
      randomNumber = Int.random(in: 1...5)
    } while randomNumber == imageNumber

    imageNumber = randomNumber
  }

  var body: some View {
    // MARK: -CARD

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
              print("Top Button was Pressed")
              isShowingSheet.toggle()
            }label: {
              CustomBottonView()
            }
            .sheet(isPresented: $isShowingSheet) {
              SettingsView()
                .presentationDragIndicator(.visible)
                .presentationDetents([.medium,.large])
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
          CustomCircleView()
          Image("image-\(imageNumber)")
            .resizable()
            .scaledToFit()
            .animation(.default, value: imageNumber)
        }

        //MARK: - FOOTER
        Button(){
          //ACTION:Generate random number
          print("Under Button was Pressed")
          randomImage()
        }label: {
          Text("Explore More")
            .font(.title2)
            .fontWeight(.heavy)
            .foregroundStyle(
              LinearGradient(
                colors: [
                  .customGreenLight,
                  .customGreenMedium], 
                startPoint: .top, 
                endPoint: .bottom)
            )
            .shadow(color:.black.opacity(0.25),
                    radius: 0.25,x:1,y:2)
        }
        .buttonStyle(GradientButton())
      }//:VSTACKS
    }//CARD
    .frame(width: 320,height: 570)

  }
}

#Preview {
  CardView()
}
