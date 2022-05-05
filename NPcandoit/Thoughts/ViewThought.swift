//
//  ViewThought.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/05.
//

import SwiftUI

struct ViewThought: View {
    let text: String
    var body: some View {
        VStack {
            HStack {
                Text("묻어둔 생각이에요")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
            }
            .padding()
            
            Spacer()
            
            CardView(texts: text)
            
            Spacer()
        }
    }
}
