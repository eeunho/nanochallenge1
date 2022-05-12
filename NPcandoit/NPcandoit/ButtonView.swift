//
//  ButtonView.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/12.
//

import SwiftUI

struct ButtonView: View {
    let buttonLabel: String
    let destination: AnyView
    
    var body: some View {
        Button(action: { }) {
            NavigationLink(destination: destination) {
                Text(buttonLabel).padding()
                    .frame(width: 300)
                
            }
            .background(Color.buttongreen)
            .foregroundColor(Color.white)
            .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            .padding()
        }
    }
}
