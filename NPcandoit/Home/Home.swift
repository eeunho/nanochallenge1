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
                NavigationLink(destination: Text("Nellie")) {
                    Home_N_CardView()
                }
                
                NavigationLink(destination: Text("Pat")) {
                    Home_P_CardView()
                }
                .navigationTitle(Text("NP캔두잇"))
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
