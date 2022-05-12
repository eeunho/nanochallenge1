//
//  Home.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/04/29.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            TabView {
                VStack {
                    HStack {
                        Text("요정들을 만나요")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Spacer()
                    }
                    .padding(.leading)
                    
                    NavigationLink(destination: Nellie()) {
                        HomeCardView(smallTitle: "N인 당신의 생각정리를 도와줄", largeTitle: "요정 넬리를 만나보세요!", titleColor: .ngreen)
                    }
                    
                    NavigationLink(destination: Pat()) {
                        HomeCardView(smallTitle: "P인 당신의 계획 실행을 도와줄", largeTitle: "요정 팻을 만나보세요!", titleColor: .pyellow)
                    }
                    
                    HStack {
                        Text("바로 일을 시작해요")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Spacer()
                    }
                    .padding(.top)
                    .padding(.leading)
                    
                    NavigationLink(destination: Work()) {
                        HomeCardView(smallTitle: "지금 바로", largeTitle: "일하러 가볼까요?", titleColor: .lightpink)
                    }
                }
                .tabItem {
                    Image(systemName: "house")
                    Text("홈")
                }
                .padding(.bottom)
                
    
                Thoughts()
                .tabItem {
                    Image(systemName: "archivebox")
                    Text("기억 상자")
                }
                
                
//                Setting()
//                .tabItem{
//                    Image(systemName: "gear")
//                    Text("설정")
//                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
