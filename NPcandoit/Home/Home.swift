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
                    Text("NP캔두잇")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                .padding()
                
                NavigationLink(destination: Nellie()) {
                    Home_N_CardView()
                }
                
                NavigationLink(destination: Pat()) {
                    Home_P_CardView()
                }
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
