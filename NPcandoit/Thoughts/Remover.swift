//
//  Remover.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/05.
//

import Foundation

// 저장해둔 생각을 삭제하는 코드

struct Remover {
    func removeFromMemory(newArray: [String]) {
        var deletedThought: String
        var newThoughts: [String] = []

        for i in 0..<thoughts.count {
            if newArray.contains(thoughts[i]) != true {
                deletedThought = thoughts[i]
                if newThoughts.isEmpty {
                    newThoughts = thoughts.filter{ $0 != deletedThought }
                } else {
                    newThoughts = newThoughts.filter{ $0 != deletedThought }
                }
            }
        }
        
        
        UserDefaults.standard.removeObject(forKey: "myThought")
        UserDefaults.standard.set(newThoughts, forKey: "myThought")
        var thoughts: [String] = Unwrapper().unwrappedThoughts
    }
}
