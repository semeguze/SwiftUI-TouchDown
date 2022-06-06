//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Sebastian Mesa on 5/06/22.
//

import SwiftUI

struct CategoryGridView: View {
  // MARK: - PROPERTIES
  
  // MARK: - BODY
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false, content: {
      LazyHGrid(rows: gridLayout, alignment: .center, spacing: columSpacing, pinnedViews: [], content: {
        Section(
          header: SectionView(rotateClockwise: false),
          footer: SectionView(rotateClockwise: true)
        ) {
          ForEach(categories) { category in
            CategoryItemView(category: category)
          }
        }
      })
      
    })
    .frame(height: 122)
    .padding(.vertical, 10)
  }
}

// MARK: - PREVIEW
struct CategoryGridView_Previews: PreviewProvider {
  static var previews: some View {
    CategoryGridView()
      .previewLayout(.sizeThatFits)
      .padding()
      .background(colorBackground)
  }
}
