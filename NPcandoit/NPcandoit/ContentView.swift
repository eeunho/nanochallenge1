//
//  ContentView.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/04/28.
//

import SwiftUI

struct ContentView: View {
    func firstLaunch() -> Bool {
        if let launchedBefore = UserDefaults.standard.string(forKey: "visited") {
            return false
        } else {
            let launchedBefore = UserDefaults.standard.set("yes", forKey: "visited");
            return true
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
                        FirstStartButton(buttonLabel: "시작하기")
                    } else {
                        VisitedStartButton(buttonLabel: "시작")
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
