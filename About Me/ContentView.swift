//
//  ContentView.swift
//  About Me
//
//  Created by Scholar on 6/25/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var factsOpen = "no"
    @State private var buttonText = "click for fun facts !!"
    @State private var aboutText = "Hello, I'm Evelyn! I'm a rising senior from Portland, Oregon. I enjoy digital drawing, reading, playing soccer, and going on long walks in my free time. I also love listening to pop and alternative music. Some of my favorite artists are Taylor Swift, Ashe, FINNEAS, Billie Eilish, and Labrinth."
    
    var body: some View {
        ZStack {
//            Color(red: 1, green: 1, blue: 1)
//                .ignoresSafeArea()
            VStack(alignment: .leading) {
                Image("blackleaf")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 180.0)
                    .clipped()
                VStack {
                    Image("profile icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color(red: 0.133, green: 0.133, blue: 0.133), lineWidth: 8))
                        .frame(height: 250)
                        .offset(y: -150)
                        .padding(.bottom, -160.0)

                    VStack (spacing: 20) {
                        VStack(spacing: 8) {
                            Text("e v e l y n !!")
                                .font(.title)
                            Text("she/her | 17 | insta: [itsevelync](https://www.instagram.com/itsevelync/)")
                                .font(.subheadline)
                                .foregroundColor(Color(red: 0.757, green: 0.757, blue: 0.757))
                        }
                        Text(aboutText)
                    }
                    .foregroundColor(Color.white)
                    .padding(20.0)
                    .background(Rectangle()
                        .foregroundColor(Color(red: 0.188, green: 0.188, blue: 0.188)))
                    .cornerRadius(15)
                        .frame(maxWidth: .infinity)
                    
                    Button(buttonText) {
                        if factsOpen == "no" {
                            factsOpen = "yes"
                            buttonText = "hide fun facts !!"
                            aboutText = """
Here are some very very cool fun facts about me!

• I'm left-handed
• I've played soccer since second grade
• I like bananas
"""
                        } else {
                            factsOpen = "no"
                            buttonText = "click for fun facts !!"
                            aboutText = "Hello, I'm Evelyn! I'm a rising senior from Portland, Oregon. I enjoy digital drawing, reading, playing soccer, and going on long walks in my free time. I also love listening to pop and alternative music. Some of my favorite artists are Taylor Swift, Ashe, FINNEAS, Billie Eilish, and Labrinth."
                        }
                    }
                    .padding()
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 0.663, green: 0.592, blue: 0.741))
                }
                .padding(.all, 20.0)
                
            }
            .background(Rectangle()
                .foregroundColor(Color(red: 0.133, green: 0.133, blue: 0.133)))
                .cornerRadius(15)
                .shadow(radius: 15)
            .padding()
            .accentColor(Color(red: 0.663, green: 0.592, blue: 0.741))
            .background(Image("leafybg")
                        .resizable(resizingMode: .tile)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                        .ignoresSafeArea())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
