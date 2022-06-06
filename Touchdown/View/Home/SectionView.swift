//
//  SectionView.swift
//  Touchdown
//
//  Created by Sebastian Mesa on 5/06/22.
//

import SwiftUI

struct SectionView: View {
  // MARK: - PROPERTIES
  @State var rotateClockwise: Bool
  
  // MARK: - BODY
  var body: some View {
    VStack(spacing: 0) {
      Spacer()
      
      Text("Categories".uppercased())
        .font(.footnote)
        .fontWeight(.bold)
        .foregroundColor(.white)
        .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
        .fixedSize()
        .frame(width: 50, height: 30)
        .layoutPriority(2)
      
      Spacer()
    }
    .background(colorGray.cornerRadius(12))
    .padding(rotateClockwise ? .trailing : .leading)
    
  }
}

// MARK: - PREVIEW
struct SectionView_Previews: PreviewProvider {
  static var previews: some View {
    SectionView(rotateClockwise: false)
      .previewLayout(.fixed(width: 100, height: 200))
      .padding()
      .background(colorBackground)
    
  }
}
