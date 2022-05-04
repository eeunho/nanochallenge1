//
//  VisitedStartButton.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/04.
//

import SwiftUI

struct VisitedStartButton: View {
    let buttonLabel: String
    var body: some View {
        Button(action: { }) {
            NavigationLink(destination: Home()) {
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
