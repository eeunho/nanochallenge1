//
//  DoneButton.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/02.
//

import SwiftUI

struct DoneButton: View {
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
            Alert(title: Text("정말 멋져요!"), message: Text("정말 뿌듯하지 않나요? 하고 싶은 것 하면서 쉬세요."), dismissButton: .default(Text("좋아요"), action: {
                self.showDetail = true
            }))
        }
    }
}
