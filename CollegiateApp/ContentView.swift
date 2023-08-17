//
//  ContentView.swift
//  CollegiateApp
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    
    func homeButton1(){
        print("button pressed")
    }
    func myPortfolioButton1(){
        print("button pressed")
    }
    
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Spacer()
                        .frame(height: 50.0)
                    Text(textTitle)
                        .font(Font.custom("Pangolin-Regular", size: 36))
                        .fontWeight(.bold)
                        .foregroundColor(Color("red"))
                    Spacer()
                        .frame(height: 200.0)
                    Image("ProfilePicture")
                        .frame(width: -100.0, height: -100.0)
                    Spacer()
                        .frame(height: 200.0)
                    TextField("Type your name here...", text: $name)
                        .padding(.all)
                        .frame(width: 350.0)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .border(Color("red"), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color("red")/*@END_MENU_TOKEN@*/)
                    Button("Submit") {
                        textTitle = "Welcome, \(name)"
                    }
                    .font(Font.custom("Handlee-Regular", size: 20))
                    .buttonStyle(.borderedProminent)
                    .tint(Color("red"))
                    .frame(height: 100.0)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                    HStack {
                        Spacer()
                            .frame(width: 80.0)
                        NavigationLink(destination: WelcomeView()) {
                                Image("HomePageIcon2")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fill)
                        
                        }
                        .padding(.horizontal)
                        .frame(width: 80.0, height: 80.0)
                        Spacer()
                        VStack {
                            Spacer()
                                .frame(height: -70.0)
                            NavigationLink(destination: PortfolioView()) {
                                    Image("MyPortfolioIcon2")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 75.0, height: 75.0)
                            }
                        }
                        Spacer()
                            .frame(width: 80.0)
                    }
                    Spacer()
                        .frame(width: 20.0)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
