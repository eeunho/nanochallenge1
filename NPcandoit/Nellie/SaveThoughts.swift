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
                
                TextField("나중에 꺼내볼 수도 있는 생각을 묻어두세요", text: $thought)
                    .textFieldStyle(.roundedBorder)
                    .onSubmit { thoughts.append(thought)
                        self.displayPopupMessage = true
                    }
                    .padding()
                
                Spacer()
            }
            .alert(isPresented: $displayPopupMessage) {
                Alert(title: Text("생각을 묻어뒀어요"), message: Text("우선은 생각하지 않도록 노력해요"), dismissButton: .default(Text("그럴게요"), action: {
                    self.showDetail = true;
                    userDefaults.set(thoughts, forKey: "myThought")

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
