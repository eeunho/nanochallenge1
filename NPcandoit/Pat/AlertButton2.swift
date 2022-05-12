//
//  AlertButton2.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/12.
//

import SwiftUI

// 선택지가 두 개인 알러트뷰

struct AlertButton2: View {
    @State var showDetail: Bool = false
    @State private var displayPopupMessage: Bool = false
    let destination: AnyView
    let title: String
    let message: String
    let primary: String
    let buttonLabel: String
    
    var body: some View {
        VStack {
            NavigationLink(destination: destination, isActive: self.$showDetail) { EmptyView() }
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
            Alert(title: Text(title), message: Text(message), primaryButton: .destructive(Text(primary), action: {
                self.showDetail = true
            }), secondaryButton: .cancel())
        }
    }
}
