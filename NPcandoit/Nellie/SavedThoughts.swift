//
//  SavedThoughts.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/03.
//

import Foundation

let userDefaults = UserDefaults.standard

let savedThoughts = userDefaults.object(forKey: "myThought") as? [String]

var thoughts: [String] = []

class Unwrapper {
    var unwrappedThoughts: [String] = []
    
    init() {
//        userDefaults.set(thoughts, forKey: "myThought")
        
        if let unwrapped = savedThoughts {
            for thought in unwrapped {
                unwrappedThoughts.append(thought)
            }
        } else {
            unwrappedThoughts.append("비어 있음")
        }
    }
}

// 클래스로 만들어야겠다
