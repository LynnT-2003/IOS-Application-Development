//
//  ExploreView.swift
//  AirbnbTutorial
//
//  Created by Lynn Thit Nyi Nyi on 18/6/2567 BE.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                SearchAndFilterBar()
                
                LazyVStack (spacing:12) {
                    // only want to render items as they appear
                    ForEach(0...10, id: \.self) { listing in
                        NavigationLink(value: listing) {
                            ListingItemView()
                                .frame(height:400)
                        }
                    }
                }
                .padding()
            }
            .navigationDestination(for: Int.self) { listing in
                ListingDetailView()
//                Text("Listing detail view...")
            }
        }
    }
}

#Preview {
    ExploreView()
}
