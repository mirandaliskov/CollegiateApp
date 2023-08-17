//
//  ProConView.swift
//  CollegiateApp
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct ProConView: View {
    @State private var rating = ""
    @State private var name = ""
    @State private var collegeName = "College Name:"
    @Binding var passDictionary : [Int : String]
    
    
    var body: some View {
        ZStack {
            Color("grey")
            VStack (spacing: 20.0) {
                Spacer()
                    .frame(height: 120.0)
                ZStack {
                    Color("red")
                        .ignoresSafeArea()
                        .cornerRadius(20)
                    Text("PROS/CONS")
                        .font(Font.custom("Pangolin-Regular", size: 30))
                        
                }
                .padding([.top, .leading, .trailing])
                
                //            Spacer()
                //                .frame(width: 100.0, height: 0.0)
                Text(collegeName)
                    .font(Font.custom("Handlee-Regular", size: 25))                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding([.top, .leading, .trailing])
                TextField("Enter name...", text: $name)
                //.padding()
                    .multilineTextAlignment(.center)
                HStack {
                    VStack {
                        Text("Pros:")
                            .font(Font.custom("Handlee-Regular", size: 20))
                        ZStack {
                            Color("blue")
                            TextField("Enter score...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                .padding(.leading)
                                
                                
                        }
                        .padding(.horizontal)
                        .frame(width: 180.0, height: 150.0)
                        .cornerRadius(50)
                
                      
                        ZStack {
                            Color("lightBlue")
                                .ignoresSafeArea()
                            Text("Rating:")
                                .font(Font.custom("Handlee-Regular", size: 15))
                                .padding(.vertical)
                        }
                        .frame(width: 100.0)
                        .cornerRadius(50)
                        
                    }
                    .cornerRadius(/*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    VStack {
                        Text("Cons:")
                            .font(Font.custom("Handlee-Regular", size: 20))
                        ZStack {
                            Color("blue")
                            TextField("Enter GPA...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                .padding(.leading)
                        }
                        .padding(.horizontal)
                        .frame(width: 180.0, height: 150.0)
                        .cornerRadius(50)
                        ZStack {
                            Color("lightBlue")
                            TextField("1-10...", text: $rating)
                                .padding([.top, .leading, .bottom])
                        }
                        .frame(width: 100.0)
                        .cornerRadius(50)
                    }
                }
                ZStack {
                    Color("yellow")
                        .ignoresSafeArea()
                    VStack {
                        Text("Additional Notes:")
                            .font(Font.custom("Handlee-Regular", size: 20))                            .padding()
                        TextField("Enter notes...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal)
                        Spacer()
                    }
                }
                .padding(.horizontal)
                .frame(height: 200.0)
                .cornerRadius(50)
                Button("Submit") {
                    passDictionary[Int(rating)!] = name
                }
                .font(Font.custom("Handlee-Regular", size: 20))
                .buttonStyle(.borderedProminent)
                .padding(.bottom)
                .tint(.black)
                .frame(height: 100.0)
                Spacer()
                    .frame(height: 85.0)
            }
        }
    }
}

struct ProConView_Previews: PreviewProvider {
    static var previews: some View {
        ProConView(passDictionary: .constant([Int:String]()))
    }
}
