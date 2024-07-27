//
//  ListingImageCarouselView.swift
//  AirbnbTutorial
//
//  Created by Lynn Thit Nyi Nyi on 18/6/2567 BE.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    ]
    
    var body: some View {
        TabView{
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
//        .frame(height: 320) // going to vary
//        .clipShape(RoundedRectangle(cornerRadius: 18)) // going to vary
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}
