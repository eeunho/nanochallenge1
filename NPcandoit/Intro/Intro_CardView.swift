//
//  Intro_CardView.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/01.
//

import SwiftUI

struct Intro_CardView: View {
    let texts: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color(red: 245/255, green: 255/255, blue: 243/255))
            
            HStack {
                Text(texts)
                    .padding()
                
                Spacer()
            }
        }
        .padding()
    }
}
