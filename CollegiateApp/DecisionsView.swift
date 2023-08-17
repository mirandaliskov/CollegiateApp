//
//  DecisionsView.swift
//  CollegiateApp
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct DecisionsView: View {
    var body: some View {
        ZStack {
            Color("grey").ignoresSafeArea()
            
            VStack {
                Spacer()
                ZStack {
                    Color("red")
                        .ignoresSafeArea()
                        .cornerRadius(20)
                    Text("DECISIONS")
                        .font(Font.custom("Pangolin-Regular", size: 36))
                }
                .padding([.top, .leading, .trailing])
                .frame(height: 10.0)
                Spacer()
                ZStack {
                    Color("yellow")
                        .ignoresSafeArea()
                        .cornerRadius(1)
                    VStack {
                        Text("Acceptances:")
                            .font(Font.custom("Handlee-Regular", size: 20))
                            .padding()
                            .frame(width: 300.0)
                        TextField("Enter notes...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                    }
                    .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    }
                .padding(.horizontal)
                .frame(height: 150.0)
                .cornerRadius(50)
                
                ZStack {
                    Color("yellow")
                        .ignoresSafeArea()
                    VStack {
                        Text("Waitlists:")
                            .font(Font.custom("Handlee-Regular", size: 20))
                            .padding()
                            .frame(width: 300.0)
                        TextField("Enter notes...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                    }
                    
                    .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)   }
                .padding(.horizontal)
                .frame(height: 150.0)
                .cornerRadius(50)
                ZStack {
                    Color("yellow")
                        .ignoresSafeArea()
                    VStack {
                        Text("Defferals:")
                            .font(Font.custom("Handlee-Regular", size: 20))
                            .padding()
                            .frame(width: 300.0)
                        TextField("Enter notes...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }
                    .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)   }
                .padding(.horizontal)
                .frame(height: 150.0)
                .cornerRadius(50)
                
                ZStack {
                    Color("yellow")
                        .ignoresSafeArea()
                    VStack {
                        Text("Rejections:")
                            .font(Font.custom("Handlee-Regular", size: 20))
                            .padding()
                            .frame(width: 300.0)
                        TextField("Enter notes...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }

                    .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)   }
                .padding(.horizontal)
                .frame(height: 150.0)
                .cornerRadius(50)
                Spacer()
                    .frame(height: 20.0)
            }
        }
        
    }
}

struct DecisionsView_Previews: PreviewProvider {
    static var previews: some View {
        DecisionsView()
    }
}
