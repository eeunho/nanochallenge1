//
//  Thoughts.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/02.
//

import SwiftUI

struct Thoughts: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: true) {
                List {
                    Text("1")
                    Text("2")
                }
            }
            .navigationTitle("묻어둔 생각들")
        }
    }
}

struct Thoughts_Previews: PreviewProvider {
    static var previews: some View {
        Thoughts()
    }
}
