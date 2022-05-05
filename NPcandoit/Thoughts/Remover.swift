//
//  Remover.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/05.
//

import Foundation

struct Remover {
    func removeFromMemory(newArray: [String]) {
        for i in 0..<thoughts.count {
            if newArray.contains(thoughts[i]) != true {
                thoughts.remove(at: i)
            }
        }
        let newThoughts: [String] = ArrayCopier().copyArray(originalArr: thoughts)
        UserDefaults.standard.removeObject(forKey: "myThought")
        UserDefaults.standard.set(newThoughts, forKey: "myThought")
        var thoughts: [String] = Unwrapper().unwrappedThoughts
    }
}
