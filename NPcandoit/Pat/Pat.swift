//
//  Pat.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/01.
//

import SwiftUI

struct Pat: View {
    
    //@state를 지우고 @ObervedObject로 바꿔줌
    @ObservedObject var myTimer = MyTimer()
    
    var body: some View {
        Text("\(self.myTimer.value)")
            .font(.largeTitle)
    }
}

struct Pat_Previews: PreviewProvider {
    static var previews: some View {
        Pat()
    }
}
