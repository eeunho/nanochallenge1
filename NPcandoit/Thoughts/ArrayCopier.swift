//
//  ArrayCopier.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/05.
//

import Foundation

// array를 얕게 copy해주는 구조체인데, array는 value type이라서 굳이 이렇게 만들어줄 필요 없음

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
