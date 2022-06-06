//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Sebastian Mesa on 5/06/22.
//

import SwiftUI

struct CategoryItemView: View {
  // MARK: - PROPERTIES
  let category: Category
  
  // MARK: - BODY
  var body: some View {
    Button(action: {}, label: {
      HStack(alignment: .center, spacing: 6) {
        Image(category.image)
          .renderingMode(.template)
          .resizable()
          .scaledToFit()
          .frame(width: 30, height: 30, alignment: .center)
          .foregroundColor(.gray)
        
        Text(category.name.uppercased())
          .font(.footnote)
          .fontWeight(.light)
          .foregroundColor(.gray)
          .multilineTextAlignment(.leading)
        
        Spacer()
      }
      .frame(width: 147, height: 45, alignment: .leading)
      .padding(.init(top: 5, leading: 15, bottom: 5, trailing: 5))
      .background(Color.white.cornerRadius(12))
      .background(
        RoundedRectangle(cornerRadius: 12)
          .stroke(.gray, lineWidth: 1)
      )
    })
    
  }
}

// MARK: - PREVIEW
struct CategoryItemView_Previews: PreviewProvider {
  static var previews: some View {
    CategoryItemView(category: categories[12])
      .previewLayout(.sizeThatFits)
      .padding()
      .background(colorBackground)
  }
}
