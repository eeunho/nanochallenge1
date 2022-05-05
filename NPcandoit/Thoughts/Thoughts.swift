//
//  Thoughts.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/02.
//

import SwiftUI

struct Thoughts: View {
    @State var copiedThoughts = ArrayCopier().copyArray(originalArr: thoughts)
    var body: some View {
        NavigationView{
            List {
                ForEach(copiedThoughts, id: \.self) {
                    savedThought in
                    NavigationLink(destination: ViewThought(text: "\(savedThought)")) {
                        Text("\(savedThought)")
                    }
                }
                .onDelete(perform: delete)
            }
            .navigationTitle("묻어둔 생각들")
            .toolbar { EditButton() }

        }
        .navigationBarHidden(true)
    }
    
    func delete(at offsets: IndexSet) {
        copiedThoughts.remove(atOffsets: offsets)
        Remover().removeFromMemory(newArray: copiedThoughts)
    }
}

struct Thoughts_Previews: PreviewProvider {
    static var previews: some View {
        Thoughts()
    }
}
