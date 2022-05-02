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
                
                HStack {
                    Text("묻어둔 기억 상자")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                .padding(.top)
                .padding(.leading)
                
                NavigationLink(destination: Thoughts()) {
                    Home_Thoughts_CardView()
                }
                
                Spacer()
            }
            .toolbar {
                NavigationLink(destination: Setting(), label: {
                    Home_ToolbarImage()
                })
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
