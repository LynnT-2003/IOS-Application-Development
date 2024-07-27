//
//  ListingItemView.swift
//  AirbnbTutorial
//
//  Created by Lynn Thit Nyi Nyi on 18/6/2567 BE.
//

import SwiftUI

struct ListingItemView: View {
    
    var body: some View {
        VStack(spacing: 8) {
            
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 18))
            
            // listing details
            HStack(alignment: .top) {
                //details
                VStack(alignment: .leading, content: {
                    Text("Samnut Prakan, Thailand")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.black)
                    Text("12 miles away")
                        .foregroundStyle(.gray)
//                    Text("Nov 3 - 10")
//                        .foregroundStyle(.gray)
//                    HStack {
//                        Text("$567")
//                            .fontWeight(.semibold)
//                        Text("night")
//                    }
                })
                
                Spacer()
                
                // rating
                HStack(spacing:2) {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    Text("4.86")
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
