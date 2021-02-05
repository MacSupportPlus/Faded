//
//  ContentView.swift
//  Faded
//
//  Created by Jason Mcelvain on 2/3/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.20, green: 0.20, blue: 0.2, opacity: 0.95)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("CT")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 175, height: 175)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.black, lineWidth: 5))
                Text("CT")
                    .font(Font.custom("Large Title", size: 40))
                    
                    .bold()
                    .padding()
                    .foregroundColor(.black)
                Text("Master Barber")
                    .foregroundColor(.black)
                    .font(Font.custom("Headline", size: 25))
                Divider()
                InfoView(text: "Book With Me", imageName: "calendar.circle.fill" )
                InfoView(text: "Reviews" , imageName: "flame")
                InfoView(text: "CT.barber@yahoo.com" , imageName: "envelope.fill")
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

