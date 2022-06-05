//
//  ContentView.swift
//  Touchdown
//
//  Created by Sebastian Mesa on 5/06/22.
//

import SwiftUI

struct ContentView: View {
  // MARK: - PROPERTIES
  
  // MARK: - BODY
  var body: some View {
    ZStack {
      VStack(spacing: 0) {
        NavigationBarView()
          .padding(.horizontal, 15)
          .padding(.bottom)
          .padding(.top, getSafeAreaTop())
          .background(.white)
          .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: -55)
        
        Spacer()
        
        FooterView()
          .padding(.horizontal)
      }
      .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    }
    .ignoresSafeArea(.all, edges: .top)
  }
}

func getSafeAreaTop() -> CGFloat {
  let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
  let window = windowScene?.windows.first
  return window?.safeAreaInsets.top ?? 0
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
