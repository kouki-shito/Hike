//
//  CustomCircleView.swift
//  Hike
//
//  Created by 市東 on 2024/04/22.
//

import SwiftUI

struct CustomCircleView: View {
  @State private var isAnimateGradient:Bool = false

  var body: some View {

    ZStack {
      Circle()
        .fill(
          .linearGradient(
            colors: [
              Color.customIndigoMedium,
              Color.customSalmonLight],
            startPoint: isAnimateGradient ? .topLeading: .bottomLeading,
            endPoint: isAnimateGradient ? .bottomTrailing: .topTrailing
          )
        )
        .onAppear{
          withAnimation(.linear(duration: 3.0)
              .repeatForever(autoreverses: true)) {
            isAnimateGradient.toggle()
          }
        }
      
      MotionAnimationView()

    }//:ZSTACK
    .frame(width: 256,height: 256)

  }//:body
}

#Preview {
  CustomCircleView()
}
