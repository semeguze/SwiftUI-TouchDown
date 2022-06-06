//
//  Constant.swift
//  Touchdown
//
//  Created by Sebastian Mesa on 5/06/22.
//

import SwiftUI

// MARK: - DATA
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")

// MARK: - COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(uiColor: .systemGray4)

// MARK: - LAYOUT
let columSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
  return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// MARK: - UX
// MARK: - API
// MARK: - IMAGE
// MARK: - FONT
// MARK: - STRING
// MARK: - MISC
