//
//  ContentView.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/04/28.
//

import SwiftUI

struct ContentView: View {
    func firstLaunch() -> Bool { // 첫 번째 론칭인지 판단하는 함수
        if let launchedBefore = UserDefaults.standard.string(forKey: "visited") {
            return false
            // 유저디폴트에서 이미 방문했었다면 false
        } else {
            let launchedBefore = UserDefaults.standard.set("yes", forKey: "visited");
            return true
            // 유저디폴트에서 방문한 적이 없다면 true
        }
    }
    
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
                    
                    if firstLaunch() == true {
                        ButtonView(buttonLabel: "시작하기", destination: AnyView(Intro()))
                    } else {
                        ButtonView(buttonLabel: "시작하기", destination: AnyView(Home()))
                    }
                    
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
