//
//  WelcomeView.swift
//  CollegiateApp
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct WelcomeView: View {
    
    @State var rankDictionary = [Int: String]()
    
    
    func ToDoButton1(){
        print("button pressed")
    }
    func DecisionsButton1(){
        print("button pressed")
    }
    func ProConButton1(){
        print("button pressed")
    }
    func RatingButton1(){
        print(rankDictionary)
    }
    
    var body: some View {
        ZStack {
           
            NavigationStack {
                VStack (alignment: .leading,spacing: 20.0) {
                    Spacer()
                        .frame(height: 10.0)
                    HStack {
                        Spacer()
                            .frame(width: 175.0)
                        ZStack {
                            Color("blue")
                                .ignoresSafeArea()
                                .cornerRadius(20)
                            Text("HOME")
                                .font(Font.custom("Pangolin-Regular", size: 36))
                            
                        }
                        .frame(width: 200.0, height: 100.0)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
                        
                    }
                    HStack {
                        Spacer()
                            .frame(width: 80.0)
                        VStack {
                            NavigationLink(destination: ToDoList1View()) {
                                Image("ToDoIcon2")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 175, height: 175)
                            }
                            NavigationLink(destination: DecisionsView()) {
                                Image("DecisionsIcon2")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 175, height: 175)
                            }
                        }
                        VStack {
                            NavigationLink(destination: ProConView(passDictionary: $rankDictionary)) {
                                Image("prosconsicon2")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 180, height: 175)
                            }
                            NavigationLink(destination: RankingView(passDictionary: $rankDictionary)) {
                                Image("Ratingsicon2")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 180, height: 175)
                            }
                        }
                        Spacer()
                            .frame(width: 80.0)
                    }
                    .padding(.all)
                    
                    Spacer()
                        .frame(height: 10.0)
                }
                .padding()
            }
        }
        
    }
    
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
