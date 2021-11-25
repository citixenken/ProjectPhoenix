//
//  ContentView.swift
//  ProjectPhoenix
//
//  Created by Ken Muyesu on 25/11/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            //overlay at an angle
            Rectangle()
                .foregroundColor(Color(red: 230/255, green: 195/255, blue: 75/255))
                .rotationEffect(Angle(degrees: 70))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
            //overlay at an angle -- mirror
            Rectangle()
                .foregroundColor(Color(red: 230/255, green: 195/255, blue: 175/255))
                .rotationEffect(Angle(degrees: -70))
                .edgesIgnoringSafeArea(.all)
                
            VStack {
                Spacer()
                
                HStack {
                    Image(systemName: "books.vertical")
                        .scaleEffect(3)
                    Text("The Booku App!")
                        .font(.title)
                        .fontWeight(.regular)
                        .foregroundColor(Color.black)
                        .padding()
                }
                
                Spacer()
                
                //Swipe Button launcher
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Swipe")
                        .font(.title)
                        .foregroundColor(.black)
                        .padding(.all, 30)
                        .background(Color.blue.opacity(0.9))
                        .cornerRadius(30.0)
                })
            }
        }
        
        //background image
        .background(
                Image("book-art-4")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
