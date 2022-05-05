//
//  Thoughts.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/02.
//

import SwiftUI

struct Thoughts: View {
    let savedThoughts = ["걱정", "근심"]

    var body: some View {
        NavigationView{
            List {
                ForEach(savedThoughts, id: \.self) {
                    savedThought in
                    NavigationLink(destination: Text("\(savedThought)")) {
                        Text("묻어둔 생각")
                    }
                }
            }
            .navigationTitle("묻어둔 생각들")
        }
        .navigationBarHidden(true)
    }
}

struct Thoughts_Previews: PreviewProvider {
    static var previews: some View {
        Thoughts()
    }
}

// 근데 이렇게 하면 앱 껐다 켜면 사라지는 건가??
// 그리고 삭제기능도 만들어야 함
