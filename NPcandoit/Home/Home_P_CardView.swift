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
                .foregroundColor(Color(red: 245/255, green: 255/255, blue: 243/255))
            
            HStack {
                VStack(alignment: .leading) {
                    Text("P인 당신의 계획 실행을 도와줄")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 195/255, green: 229/255, blue: 174/255))
                    
                    Text("요정 팻을 만나보세요!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 241/255, green: 225/255, blue: 166/255))
                }
                
                Spacer()
            }
            .padding()
        }
        .padding()
    }
}
