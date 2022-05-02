//
//  Home__ToolbarImage.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/02.
//

import SwiftUI

struct Home_ToolbarImage: View {
    var body: some View {
        Image(systemName: "person.crop.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 35.0)
            .foregroundColor(.lightgreen)
    }
}
