//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Sebastian Mesa on 5/06/22.
//

import SwiftUI

struct BrandGridView: View {
  // MARK: - PROPERTIES
  
  // MARK: - BODY
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false, content: {
      LazyHGrid(rows: gridLayout, spacing: columSpacing, content: {
        ForEach(brands) { brand in
          BrandItemView(brand: brand)
        }
      })
      .frame(height: 200)
      .padding(15)
    })
  }
}

// MARK: - PREVIEWS
struct BrandGridView_Previews: PreviewProvider {
  static var previews: some View {
    BrandGridView()
      .previewLayout(.sizeThatFits)
      .background(colorBackground)
  }
}
