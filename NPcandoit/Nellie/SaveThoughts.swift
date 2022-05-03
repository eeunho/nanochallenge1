//
//  SaveThoughts.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/03.
//

import SwiftUI

struct SaveThoughts: View {
    var body: some View {
        NavigationView{
        VStack {
            Text("저장하는 곳")
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
