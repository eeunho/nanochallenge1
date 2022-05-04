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
                Color.backgroundgreen
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    
                    Image("logo_png")
                        .resizable()
                        .scaledToFit() // 비율 유지
                        .frame(width: 100)
                        .padding()
                    
                    Spacer()
                    
                    FirstStartButton(buttonLabel: "시작하기")
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
