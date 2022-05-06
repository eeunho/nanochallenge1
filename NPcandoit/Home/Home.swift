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
                        Home_N_CardView()
                    }
                    
                    NavigationLink(destination: Pat()) {
                        Home_P_CardView()
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
                        Home_Work_CardView()
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
