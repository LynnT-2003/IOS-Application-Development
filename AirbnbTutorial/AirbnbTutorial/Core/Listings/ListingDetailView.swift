//
//  ListingDetailView.swift
//  AirbnbTutorial
//
//  Created by Lynn Thit Nyi Nyi on 18/6/2567 BE.
//

import SwiftUI

struct ListingDetailView: View {
    
    var body: some View {
        ScrollView{
            ListingImageCarouselView()
                .frame(height: 320)
            
            VStack(alignment: .leading, spacing:8) {
                Text("Baan Pirawit")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    HStack(spacing:2) {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        
                        Text("4.86")
                        
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                            .padding(.horizontal, 10)
                    }
                    .foregroundStyle(.black)
                    
                    Text("Samut Prakan, Thailand")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            
            Divider()
            
            // Host info view
            HStack {
                VStack(spacing:4) {
                    Text("Entire villa hosted under Pirawit Management")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack (spacing: 2) {
                        Text("4 guests - ")
                        Text("4 bedrooms - ")
                        Text("4 beds - ")
                        Text("3 baths")
                    }
                    .font(.caption)
                }
                .frame(width:300, alignment: .leading)
                
                Spacer()
                
                Image("aki")
                    .resizable()
                    .frame(width:64, height:64)
                    .scaledToFill()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            .padding()
            
            Divider()
            
            // Listing Features
            VStack(alignment: .leading, spacing: 16) {
                ForEach(0..<2) {feature in
                    HStack(spacing: 12) {
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading) {
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Superhosts are epxerienced, highly rated hosts who are committed to providing great stars for guests")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ListingDetailView()
}
