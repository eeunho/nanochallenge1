//
//  Intro_Button.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/01.
//

import SwiftUI

struct Intro_Button: View {
    var body: some View {
        Button(action: { }) {
            NavigationLink(destination: Home()) {
                Text("요정들을 만나러 가요").padding()
                    .frame(width: 300)
            }
        }
        .background(Color(red: 120/255, green: 183/255, blue: 156/255))
        .foregroundColor(Color.white)
        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
        .padding(80)
    }
}
