//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Sebastian Mesa on 5/06/22.
//

import Foundation

struct Category: Codable, Identifiable {
  let id: Int
  let name: String
  let image: String
}
