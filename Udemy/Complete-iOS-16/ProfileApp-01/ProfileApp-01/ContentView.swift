//
//  ContentView.swift
//  ProfileApp-01
//
//  Created by Lynn Thit Nyi Nyi on 24/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background").resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center){
                
                VStack(alignment: .center, spacing: 15){
                    Image("myImage").resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: .top)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .shadow(color: .pink, radius: 5, x: 5, y: 5)
                        .padding(.top, 20)
                    
                    Text("Amelia Jones")
                        .font(.system(size: 30))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.system(.largeTitle))
                        .foregroundStyle(Color(.white))
                        .shadow(radius: 5)
                        .padding(.top, 18)
                    
                    Text("iOS | Frontend Developer")
                        .foregroundStyle(Color(.black))
                        .opacity(0.7)
                        .font(.body)
                    
                    HStack(spacing: 40){
                        Image(systemName: "heart.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "network")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "message.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "phone.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .foregroundColor(.white)
                    .frame(width: 250, height: 50, alignment: .center)
                    .shadow(color: .pink, radius: 5, y: 8)
                }
                
                Spacer()
                
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 24){
                
                    RoundedRectangle(cornerRadius: 120)
                        .frame(width: 200, height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .shadow(color: .pink, radius: 8, y: 8)
                        .overlay(
                            Text("Follow")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundStyle(Color(.pink))
                                .font(.system(size: 27))
                        )
                    
                    HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 60){
                        
                        VStack{
                            Text("1775")
                                .font(.title)
                                .foregroundStyle(Color(.pink))
                            Text("Appreciations")
                                .font(.caption)
                                .foregroundStyle(Color(.gray))
                        }
                        
                        VStack{
                            Text("800")
                                .font(.title)
                                .foregroundStyle(Color(.pink))
                            Text("Appreciations")
                                .font(.caption)
                                .foregroundStyle(Color(.gray))
                        }
                        
                        VStack{
                            Text("231")
                                .font(.title)
                                .foregroundStyle(Color(.pink))
                            Text("Appreciations")
                                .font(.caption)
                                .foregroundStyle(Color(.gray))
                        }
                        
                    }
                    
                    Text("About Me")
                        .font(.system(size: 27))
                        .font(.system(.largeTitle))
                    
                    Text("I am an iOS Frontend Developer. Welcome to the series of my first OS Projects. Let's dive deeper and create some more exciting projects.")
                        .font(.system(.body))
                        .foregroundStyle(Color(.black))
                        .opacity(0.7)
                        .multilineTextAlignment(.center)
                        .lineLimit(3)
                }
            }
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    ContentView()
}
