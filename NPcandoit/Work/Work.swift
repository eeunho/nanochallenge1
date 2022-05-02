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
                
                DoneButton(buttonLabel: "다 끝냈어요!")
                    .padding()
                
                GiveUpButton(buttonLabel: "포기할래요")
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
