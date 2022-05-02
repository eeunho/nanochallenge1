//
//  GiveUpButton.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/02.
//

import SwiftUI

struct GiveUpButton: View {
    @State var showDetail: Bool = false
    @State private var displayPopupMessage: Bool = false
    
    let buttonLabel: String
    var body: some View {
        VStack {
            NavigationLink(destination: Home(), isActive: self.$showDetail) { EmptyView() }
            // 여기서 홈으로 나갈때 스택구조 쌓여있던 것 다 걷히면서 나가게 할 수는 없을까?
            Button(action: {
                self.displayPopupMessage = true
            })
            {
                Text(buttonLabel).padding()
                    .frame(width: 300)
            .background(Color.buttongreen)
            .foregroundColor(Color.white)
            .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)            }
        }
        .alert(isPresented: $displayPopupMessage) {
            Alert(title: Text("정말인가요?"), message: Text("아쉬워요. 마음이 바뀌면 언제든 절 다시 찾아주세요."), dismissButton: .default(Text("알겠어요"), action: {
                self.showDetail = true
            }))
        }
    }
}

// 이거는 선택지 두 개인 걸로 만들 수 없을까? 하나는 남기고 하나는 홈으로
