//
//  Work.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/02.
//

import SwiftUI

struct Work: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Text("그럼 일을 시작해볼까요? 화이팅이에요!")
                    .font(.title2)
                
                Spacer()
                
                AlertButton1(destination: AnyView(Home()), title: "멋져요!", message: "정말 뿌듯하지 않나요? 하고 싶은 것 하면서 쉬세요.", dismissal: "좋아요", buttonLabel: "다 끝냈어요!")
                    .padding()
                
                AlertButton2(destination: AnyView(Home()), title: "정말인가요?", message: "아쉬워요. 마음이 바뀌면 언제든 절 다시 찾아주세요.", primary: "네, 그래도 포기할게요", buttonLabel: "포기할래요")
                    .padding(.bottom)

            }
        }
        .navigationBarHidden(true)
    }
}

struct Work_Previews: PreviewProvider {
    static var previews: some View {
        Work()
    }
}
