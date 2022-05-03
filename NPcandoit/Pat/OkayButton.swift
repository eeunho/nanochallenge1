//
//  OkayButton.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/03.
//

import SwiftUI

struct OkayButton: View {
    @State var showDetail: Bool = false
    @State private var displayPopupMessage: Bool = false

    let buttonLabel: String
    var body: some View {
        VStack {
            NavigationLink(destination: Work(), isActive: self.$showDetail) { EmptyView() }
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
            Alert(title: Text("잘 생각했어요!"), message: Text("일을 먼저 끝내고 쉬면 기분도 좋을 거예요."), dismissButton: .default(Text("맞아요"), action: {
                self.showDetail = true
            }))
        }
    }
}

