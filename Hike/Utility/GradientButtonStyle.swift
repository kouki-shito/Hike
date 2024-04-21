//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by 市東 on 2024/04/21.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration
      .label
      .padding(.vertical)
      .padding(.horizontal,30)
      .background(
        configuration.isPressed ?
        //TRUE
          LinearGradient(
            colors: [
              .customGrayMedium,
              .customGrayLight],
            startPoint: .top,
            endPoint: .bottom)

        ://False
          LinearGradient(
            colors: [
              .customGrayLight,
              .customGrayMedium],
            startPoint: .top,
            endPoint: .bottom)


      )
      .cornerRadius(40)
  }

}
