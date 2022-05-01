//
//  ContentView.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/04/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 240/255, green: 255/255, blue: 237/255)
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    
                    Image("logo_png")
                        .resizable()
                        .scaledToFit() // 비율 유지
                        .frame(width: 100)
                        .padding()
                    
                    Spacer()
                    
                    Button(action: { }) {
                        NavigationLink(destination: Intro()) {
                            Text("시작하기").padding()
                                .frame(width: 300)
                        }
                    }
                    .background(Color(red: 120/255, green: 183/255, blue: 156/255))
                    .foregroundColor(Color.white)
                    .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                    .padding()
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
