//
//  Intro_CardView.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/01.
//

import SwiftUI

// 기본적인 카드뷰로, 텍스트가 들어가는 공간이 있음

struct CardView: View {
    let texts: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.backgroundgreen)
            
            HStack {
                Text(texts)
                    .padding()
                    .foregroundColor(.buttongreen)
                
                Spacer()
            }
        }
        .padding()
    }
}
