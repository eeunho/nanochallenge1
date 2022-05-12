//
//  HomeCardView.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/12.
//

import SwiftUI

struct HomeCardView: View {
    let smallTitle: String
    let largeTitle: String
    let titleColor: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.backgroundgreen)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(smallTitle)
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.lightgreen)
                    
                    Text(largeTitle)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(titleColor)
                }
                
                Spacer()
            }
            .layoutPriority(100)
            .padding()
        }
        .padding(.leading)
        .padding(.trailing)
    }
}
