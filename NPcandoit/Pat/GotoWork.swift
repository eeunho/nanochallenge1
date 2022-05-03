//
//  GotoWork.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/03.
//

import SwiftUI

struct GotoWork: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Spacer()
                
                Text("일 하러 가세요!!!!!!!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.lightpink)
                
                Spacer()
                
                OkayButton(buttonLabel: "알겠어요 갈게요")
                    .padding()
                
                NoButton(buttonLabel: "싫으니 조용히 해요")
                    .padding(.bottom)
            }
        }
        .navigationBarHidden(true)
    }
}

struct GotoWork_Previews: PreviewProvider {
    static var previews: some View {
        GotoWork()
    }
}
