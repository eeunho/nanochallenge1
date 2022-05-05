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
                    NavigationLink(destination: Text("\(savedThought)")) {
                        Text("\(savedThought)")
                    }
                }
                .onDelete(perform: delete)
                .onDelete(perform: removeFromMemory)
            }
            .navigationTitle("묻어둔 생각들")
            .toolbar { EditButton() }

        }
        .navigationBarHidden(true)
    }
    
    func delete(at offsets: IndexSet) {
        copiedThoughts.remove(atOffsets: offsets)
    }
    
    func removeFromMemory(at offsets: IndexSet) {
        for i in 0..<thoughts.count {
            if copiedThoughts.contains(thoughts[i]) != true {
                thoughts.remove(at: i)
            }
        }
        UserDefaults.standard.set(thoughts, forKey: "myThought")
    }
}

struct Thoughts_Previews: PreviewProvider {
    static var previews: some View {
        Thoughts()
    }
}
