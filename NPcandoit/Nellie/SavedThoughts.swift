//
//  SavedThoughts.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/03.
//

import Foundation

var thoughts: [String] = Unwrapper().unwrappedThoughts

class Unwrapper {
    let savedThoughts = UserDefaults.standard.object(forKey: "myThought") as? [String]
    var unwrappedThoughts: [String] = []

    init() {
        if let unwrapped = savedThoughts {
            for thought in unwrapped {
                unwrappedThoughts.append(thought)
            }
        } else {
            unwrappedThoughts = []
        }
    }
}
