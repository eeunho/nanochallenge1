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
                        Text("N 또는 P여도 문제 없어요!")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Spacer()
                    }
                    .padding()
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(red: 245/255, green: 255/255, blue: 243/255))
                        
                        HStack {
                            Text("게으름의 천재이신가요? 집중을 통 할 수가 없나요?")
                                .padding()
                            
                            Spacer()
                        }
                    }
                    .padding(20)
                    .padding(.bottom, 100)
                    
                    Spacer()
                }
                                
                HStack {
                    VStack(alignment: .leading) {
                        Text("N 또는 P여도 문제 없어요!")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.bottom, 50)
                        
                        Text("Meet your lovely fairies")
                        
                        
                        Spacer()
                    }
                    
                    Spacer()
                }
                .padding()
                                
                VStack {
                    Text("Second")
                    
                    Spacer()
                    
                    Button(action: { }) {
                        NavigationLink(destination: Text("next page")) {
                            Text("시작하기").padding()
                                .frame(width: 300)
                        }
                        .padding(100)
                    }
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
    }
}

struct Intro_Previews: PreviewProvider {
    static var previews: some View {
        Intro()
    }
}
