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
                .foregroundColor(Color(red: 245/255, green: 255/255, blue: 243/255))
            
            HStack {
                VStack(alignment: .leading) {
                    Text("N인 당신의 생각 정리를 도와줄")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 244/255, green: 187/255, blue: 187/255))
                    
                    Text("요정 넬리를 만나보세요!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 151/255, green: 219/255, blue: 174/255))
                }
                
                Spacer()
            }
            .padding()
        }
        .padding()
    }
}
