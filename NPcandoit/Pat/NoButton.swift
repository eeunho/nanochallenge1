//
//  NoButton.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/03.
//

import SwiftUI

struct NoButton: View {
    @State var showDetail: Bool = false
    @State private var displayPopupMessage: Bool = false
    
    let buttonLabel: String
    var body: some View {
        VStack {
            NavigationLink(destination: Home(), isActive: self.$showDetail) { EmptyView() }
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
            Alert(title: Text("정말인가요?"), message: Text("당신의 자유지만, 후회하는 것도 당신의 몫이에요"), primaryButton: .destructive(Text("괜찮아요"), action: {
                self.showDetail = true
            }), secondaryButton: .cancel())
        }
    }
}
