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
        
        ScrollView(.vertical, showsIndicators: false, content: {
          VStack(spacing: 0) {
            
            FeaturedTabView()
              .padding(.vertical, 10)
            //  Now, for iPhone 12, I have experimented with different heights which looked best, and I settled with the value 290. For iPhone 12, width from UIScreen.main.bounds.width is 420.
            //  So, I had to determine the ratio, which would eventually give me the desired height.
            //  ratio = (width)/(height) = 420 / 290
            //  => ratio = 1.475
              .frame(height: UIScreen.main.bounds.width / 1.475)
            
            CategoryGridView()
            
            FooterView()
              .padding(.horizontal)
          }
        })
        
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
