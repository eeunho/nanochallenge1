//
//  Intro.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/04/29.
//

import SwiftUI

struct Intro: View {
    var body: some View {
        NavigationView{
            TabView {
                VStack {
                    HStack {
                        Text("N이나 P여도 문제 없어요!")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.lightgreen)
                        
                        Spacer()
                    }
                    .padding()
                    
                    Intro_CardView1()
                    .padding(.bottom, 100)
                    
                    Spacer()
                }
                
                VStack {
                    Spacer()
                    
                    Intro_CardView2()
                    .padding(.bottom, 150)
                    
                    Spacer()
                }
                
                VStack {
                    Spacer()
                    
                    Intro_CardView3()
                    .padding(.bottom, 150)
                    
                    Spacer()
                }
                
                VStack {
                    Spacer()
                    
                    Intro_CardView4()
                    .padding(.bottom, 150)
                    
                    Spacer()
                    
                    NavigationLink(destination: Home()) {
                        IntroButton(buttonLabel: "요정들을 만나러 가요")
                            .padding(80)                    }
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
        .navigationBarHidden(true)
    }
}

struct Intro_Previews: PreviewProvider {
    static var previews: some View {
        Intro()
    }
}
