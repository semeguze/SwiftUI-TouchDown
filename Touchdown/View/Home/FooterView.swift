//
//  FooterView.swift
//  Touchdown
//
//  Created by Sebastian Mesa on 5/06/22.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
      VStack(alignment: .center, spacing: 10) {
        Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable price")
          .foregroundColor(.gray)
          .multilineTextAlignment(.center)
          .layoutPriority(2)
        
        Image("logo-lineal")
          .renderingMode(.template)
          .foregroundColor(.gray)
          .layoutPriority(0)
        
        Text("Copyright © Sebastian Mesa\nAll rights reserved")
          .font(.footnote)
          .fontWeight(.bold)
          .foregroundColor(.gray)
          .multilineTextAlignment(.center)
          .layoutPriority(1)
      }
      .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
      FooterView()
        .previewLayout(.sizeThatFits)
        .background(colorBackground)
    }
}
