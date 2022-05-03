//
//  SaveThoughts.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/03.
//

import SwiftUI

struct SaveThoughts: View {
    @State var thought: String = ""
    var body: some View {
        NavigationView{
            VStack {
                TextField("나중에 꺼내볼 수도 있는 생각을 묻어두세요", text: $thought)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Spacer()
                
                SaveButton2(buttonLabel: "묻어두기")
            }
        }
        .navigationBarHidden(true)
    }
}

struct SaveThoughts_Previews: PreviewProvider {
    static var previews: some View {
        SaveThoughts()
    }
}


// savebutton2(알림 뜨는것) -> work 로 이어지게 만들기
