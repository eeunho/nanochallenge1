//
//  ArrayCopier.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/05.
//

import Foundation

struct ArrayCopier {
    func copyArray(originalArr: [String]) -> [String] {
        var copiedArr: [String] = []
        if originalArr.count != 0 {
            for element in originalArr {
                copiedArr.append(element)
            }
        }
        return copiedArr
    }
}

// value type이라서 array를 카피할 때는 굳이 이렇게 만들어줄 필요 없음
