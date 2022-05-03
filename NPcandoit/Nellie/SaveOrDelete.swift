//
//  SaveOrDelete.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/02.
//

import SwiftUI

struct SaveOrDelete: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Spacer()
                
                Text("""
                    생각을 묻었어요.
                    나중에 꺼내봐도 되고 평생 묻어둬도 돼요.
                    """)
                    .font(.title2)
                
                Spacer()
                
                DeleteButton(buttonLabel: "아예 잊어버릴래요")
                
                SaveButton(buttonLabel: "나중에 꺼내볼 수도 있을 것 같아요")
                    .padding(.bottom)
            }
        }
        .navigationBarHidden(true)
    }
}

struct SaveOrDelete_Previews: PreviewProvider {
    static var previews: some View {
        SaveOrDelete()
    }
}
