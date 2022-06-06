//
//  TitleView.swift
//  Touchdown
//
//  Created by Sebastian Mesa on 5/06/22.
//

import SwiftUI

struct TitleView: View {
  // MARK: - PROPERTIES
  var title: String
  
  // MARK: - BODY
  var body: some View {
    HStack {
      Text(title)
        .font(.largeTitle)
        .fontWeight(.heavy)
      
      Spacer()
    }
    .padding(.horizontal)
    .padding(.top, 15)
    .padding(.bottom, 10)
  }
}

// MARK: - PRVIEWS
struct TitleView_Previews: PreviewProvider {
  static var previews: some View {
    TitleView(title: "Helmet")
      .previewLayout(.sizeThatFits)
      .background(colorBackground)
  }
}
