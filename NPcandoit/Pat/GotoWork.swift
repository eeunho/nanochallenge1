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
                
                AlertButton1(destination: AnyView(Work()), title: "잘 생각했어요!", message: "일을 먼저 끝내고 쉬면 기분도 좋을 거예요.", dismissal: "맞아요", buttonLabel: "알겠어요 갈게요")
                    .padding()
                                
                AlertButton2(destination: AnyView(Home()), title: "정말인가요?", message: "당신의 자유지만, 후회하는 것도 당신의 몫이에요", primary: "괜찮아요", buttonLabel: "싫으니 조용히 해요")
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
