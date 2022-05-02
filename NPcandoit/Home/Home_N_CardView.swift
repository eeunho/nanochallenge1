//
//  Home_N_CardView.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/01.
//

import SwiftUI

struct Home_N_CardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.backgroundgreen)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("N인 당신의 생각 정리를 도와줄")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.lightpink)
                    
                    Text("요정 넬리를 만나보세요!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.ngreen)
                }
                
                Spacer()
            }
            .padding()
        }
        .padding()
    }
}
