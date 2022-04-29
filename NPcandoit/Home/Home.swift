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
                Button(action: { }) {
                    NavigationLink(destination: Text("next page")) {
                        Text("시작하기").padding()
                            .frame(width: 300)
                    }
                }
                
                Button(action: { }) {
                    NavigationLink(destination: Text("next page 2")) {
                        Text("시작하기2").padding()
                            .frame(width: 300)
                    }
                }
            }
            .navigationTitle(Text("NP캔두잇"))
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
