//
//  PortfolioView.swift
//  CollegiateApp
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct PortfolioView: View {
    var body: some View {
        ZStack {
            Color("grey")
            VStack (alignment: .leading,spacing: 20.0) {
                Spacer()
                    .frame(height: 150.0)
                ZStack {
                    Color("red")
                        .ignoresSafeArea()
                        .cornerRadius(20)
                    Text("PORTFOLIO")
                        .font(Font.custom("Pangolin-Regular", size: 36))
                }
                .padding(.horizontal)
                .frame(height: -10.0)
                HStack {
                    VStack {
                        Text("ACT:")
                            .font(Font.custom("Handlee-Regular", size: 20))
                        .padding([.top, .leading])
                        ZStack {
                            Color("blue")
                                .ignoresSafeArea()
                            TextField("Enter score...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                .padding(.leading)
                        }
                        .cornerRadius(40)
                        .padding(.horizontal)
                        .frame(width: 180.0, height: 150.0)
                        Text("SAT:")
                            .font(Font.custom("Handlee-Regular", size: 20))
                            .padding(.leading)
                        ZStack {
                            Color("blue")
                                .ignoresSafeArea()
                            TextField("Enter score...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                .padding(.leading)
                        }
                        .cornerRadius(40)
                        .padding(.horizontal)
                        .frame(width: 180.0, height: 150.0)
                    }
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    VStack {
                        Spacer()
                            .frame(height: 20.0)
                        Text("GPA:")
                            .font(Font.custom("Handlee-Regular", size: 20))
                            .padding(.horizontal)
                        ZStack {
                            Color("blue")
                                .ignoresSafeArea()
                            TextField("Enter GPA...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                .padding(.leading)
                        }
                        .cornerRadius(20)
                        .padding([.bottom, .trailing])
                        .frame(height: 150.0)
                        Text("AP Exams & Scores")
                            .font(Font.custom("Handlee-Regular", size: 20))
                            .padding(.vertical)
                            .frame(height: 20.0)
                        Spacer()
                            .frame(height: 15.0)
                        HStack {
                            ZStack { Color("lightBlue")
                                    .ignoresSafeArea()
                                TextField("Enter name...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                    .padding(.leading)
                            }
                            .cornerRadius(10)
                            ZStack {
                                Color("lightBlue")
                                    .ignoresSafeArea()
                                TextField("Enter score...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                    .padding(.leading)
                            }
                        }
                        .padding([.top, .trailing])
                        .frame(height: 150.0)
                        Spacer()
                            .frame(height: 22.0)
                    }
                }
                ZStack {
                    Color("yellow")
                        .ignoresSafeArea()
                    VStack {
                        Text("Extracurriculars:")
                            .font(Font.custom("Handlee-Regular", size: 20))
                            .padding()
                        TextField("Enter extracurriculars...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal)
                        Spacer()
                    }
                    .cornerRadius(10)
                }
                .cornerRadius(20)
                .padding(.all)
                .frame(height:200.0)
                Spacer()
                    .frame(height: 100.0)
            }
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}
