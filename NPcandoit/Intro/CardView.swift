//
//  Intro_CardView.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/01.
//

import SwiftUI

struct CardView: View {
    let texts: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.backgroundgreen)
            
            HStack {
                Text(texts)
                    .padding()
                
                Spacer()
            }
        }
        .padding()
    }
}
