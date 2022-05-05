//
//  SaveThoughts.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/03.
//

import SwiftUI

struct SaveThoughts: View {
    @State var thought: String = ""
    @State var showDetail: Bool = false
    @State private var displayPopupMessage: Bool = false

    var body: some View {
        NavigationView{
            VStack {
                NavigationLink(destination: Work(), isActive: self.$showDetail) { EmptyView() }
                
                TextField("나중에 다시 꺼내볼 생각을 키워드로 적어두세요.", text: $thought)
                    .textFieldStyle(.roundedBorder)
                    .onSubmit {
                        thoughts.append(thought)
                        UserDefaults.standard.set(thoughts, forKey: "myThought")
                        self.displayPopupMessage = true
                    }
                    .padding()
                    .disableAutocorrection(true)
                
                Spacer()
            }
            .alert(isPresented: $displayPopupMessage) {
                Alert(title: Text("생각을 묻어뒀어요"), message: Text("우선은 생각하지 않도록 노력해요"), dismissButton: .default(Text("그럴게요"), action: {
                    self.showDetail = true;
                }))
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


// 이 페이지에서 버그 조금 있음. 저장된 생각들 먼저 삭제하고 돌아와서 앱 끄기 전에 이 페이지에서 다시 저장하고 돌아가면 이미 삭제했던 생각도 다시 돌아오게 됨
