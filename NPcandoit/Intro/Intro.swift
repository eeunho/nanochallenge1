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
                Text("First")
                Text("Second")
                Button(action: { }) {
                    NavigationLink(destination: Text("next page")) {
                        Text("시작하기").padding()
                            .frame(width: 300)
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
