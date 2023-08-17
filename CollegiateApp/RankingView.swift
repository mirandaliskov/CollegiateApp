//
//  RankingView.swift
//  CollegiateApp
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct RankingView: View {
    @Binding var passDictionary : [Int: String]
    
    var body: some View {
        VStack {
            
            Spacer()
            ZStack {
                Color(.systemOrange)
                    .ignoresSafeArea()
                    .cornerRadius(20)
                Text("RANKING")
                    .font(Font.custom("Pangolin-Regular", size: 36))
            }
            .padding([.top, .leading, .trailing])
            .frame(height: 10.0)
            
            Spacer()
            
            ForEach(passDictionary.sorted(by: <), id: \.key) { key, value in
                    
                            ZStack {
                                Color(.systemYellow)
                                    .ignoresSafeArea()
                                VStack {
                                    HStack {
                                        Text("College: \(value)")
                                            .font(Font.custom("Handlee-Regular", size: 20))
                                            .padding()
                                            .frame(width: 100.0)
                                        Text("Rank: \(key)")
                                            .font(Font.custom("Handlee-Regular", size: 20))
                                            .padding()
                                            .frame(width: 200.0)
                                    }
                                    Spacer()
                                }
                                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                
                            }
                            .padding(.all)
                            .frame(height: 150.0)
            }
            
//            ZStack {
//                Color(.systemYellow)
//                    .ignoresSafeArea()
//                VStack {
//                    HStack {
//                        Text("College: )")
//                            .font(.headline)
//                            .padding()
//                            .frame(width: 100.0)
//                        Text("Rank:")
//                            .font(.headline)
//                            .padding()
//                            .frame(width: 200.0)
//                    }
//                    Spacer()
//                }
//                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
//
//            }
//            .padding(.all)
//            .frame(height: 150.0)
//
//            ZStack {
//                Color(.systemYellow)
//                    .ignoresSafeArea()
//                VStack {
//                    HStack {
//                        Text("College:")
//                            .font(.headline)
//                            .padding()
//                            .frame(width: 100.0)
//                        Text("Rank:")
//                            .font(.headline)
//                            .padding()
//                            .frame(width: 200.0)
//                    }
//                    Spacer()
//                }
//
//                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)   }
//            .padding(.all)
//            .frame(height: 150.0)
//            ZStack {
//                Color(.systemYellow)
//                    .ignoresSafeArea()
//                VStack {
//                    HStack {
//                        Text("College:")
//                            .font(.headline)
//                            .padding()
//                            .frame(width: 100.0)
//                        Text("Rank:")
//                            .font(.headline)
//                            .padding()
//                            .frame(width: 200.0)
//                    }
//                    Spacer()
//                }
//                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)   }
//            .padding(.all)
//            .frame(height: 150.0)
//            ZStack {
//                Color(.systemYellow)
//                    .ignoresSafeArea()
//                VStack {
//                    HStack {
//                        Text("College:")
//                            .font(.headline)
//                            .padding()
//                            .frame(width: 100.0)
//                        Text("Rank:")
//                            .font(.headline)
//                            .padding()
//                            .frame(width: 200.0)
//                    }
//                    Spacer()
//                }
//                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)   }
//            .padding(.all)
//            .frame(height: 150.0)
//            Spacer()
//                .frame(height: 20.0)
        }
    }
}

struct RankingView_Previews: PreviewProvider {
    static var previews: some View {
        RankingView(passDictionary: .constant([Int:String]()))
    }
}
