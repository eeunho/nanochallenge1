//
//  Home_P_CardView.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/01.
//

import SwiftUI

struct Home_P_CardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.backgroundgreen)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("P인 당신의 계획 실행을 도와줄")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.lightgreen)
                    
                    Text("요정 팻을 만나보세요!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.pyellow)
                }
                
                Spacer()
            }
            .padding()
        }
        .padding()
    }
}
