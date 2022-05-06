//
//  Home_Work_CardView.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/02.
//

import SwiftUI

struct Home_Work_CardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.backgroundgreen)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("지금 바로")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.lightgreen)
                    
                    Text("일하러 가볼까요?")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.lightpink)
                }
                
                Spacer()
            }
            .padding()
        }
        .padding(.leading)
        .padding(.trailing)
    }
}

// 이런건 중복되니까 중복줄이기
