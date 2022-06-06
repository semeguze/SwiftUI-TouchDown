//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Sebastian Mesa on 5/06/22.
//

import SwiftUI

struct ProductItemView: View {
  // MARK: - PROPERTIES
  let product: Product
  
  // MARK: - BODY
  var body: some View {
    VStack(alignment: .leading, spacing: 6) {
      // PHOTO
      ZStack {
        Image(product.image)
          .resizable()
          .scaledToFit()
          .padding(10)
      }
      .background(Color(red: product.red, green: product.green, blue: product.blue))
      .cornerRadius(12)
      
      // NAMCE
      Text(product.name)
        .font(.title3)
        .fontWeight(.black)
      
      // PRICE
      Text(product.formattedPrice)
        .fontWeight(.semibold)
        .foregroundColor(.gray)
    }
  }
}

// MARK: - PREVIEWS
struct ProductItemView_Previews: PreviewProvider {
  static var previews: some View {
    ProductItemView(product: products[0])
      .previewLayout(.fixed(width: 200, height: 300))
      .padding()
      .background(colorBackground)
  }
}
