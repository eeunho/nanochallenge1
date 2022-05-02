//
//  Home_Thoughts_CardView.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/02.
//

import SwiftUI

struct Home_Thoughts_CardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.backgroundgreen)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("묻어두었던")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.lightgreen)
                    
                    Text("기억상자를 열어보아요")
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
