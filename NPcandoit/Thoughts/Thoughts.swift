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
            List {
                ForEach(thoughts, id: \.self) {
                    savedThought in
                    NavigationLink(destination: Text("\(savedThought)")) {
                        Text("\(savedThought)")
                    }
                }
//                .onDelete(perform: delete)

                ForEach(firstThought, id: \.self) {
                    savedThought in NavigationLink(destination: Text("\(savedThought)")) {
                        Text("\(savedThought)")
                    }
                }
//                .onDelete(perform: delete)
            }
            .navigationTitle("묻어둔 생각들")
            .toolbar { EditButton() }

        }
        .navigationBarHidden(true)
    }
    
//    func delete(at offsets: IndexSet) {
//        for i in offsets.makeIterator() {
//            if firstThought.isEmpty {
//                let theItem = thoughts[i]
//                thoughts.remove(atOffsets: offsets)
//                firstThought.remove(atOffsets: offsets)
//                removeFromMemory(element: theItem)
//            }
//        }
//    }
//
//    func removeFromMemory(element: String) {
//        thoughts = thoughts.filter{ $0 != element }
//        UserDefaults.standard.set(thoughts, forKey: "myThought")
//    }
}

struct Thoughts_Previews: PreviewProvider {
    static var previews: some View {
        Thoughts()
    }
}


// 
