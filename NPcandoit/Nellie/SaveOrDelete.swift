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
                
                AlertButton1(destination: AnyView(Work()), title: "생각을 지웠어요", message: "더이상 생각하지 않도록 노력해요", dismissal: "그럴게요", buttonLabel: "아예 잊어버릴래요")
                
                ButtonView(buttonLabel: "나중에 꺼내볼 수도 있을 것 같아요", destination: AnyView(SaveThoughts()))
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
