//
//  Boxed.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/02.
//

import SwiftUI

struct Boxed: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Text("생각을 상자에 담았어요.")
                    .font(.title2)
                
                Spacer()
                
                BurialButton(buttonLabel: "생각을 묻어둬요")
                    .padding(.bottom)
            }
        }
        .navigationBarHidden(true)
    }
}

struct Boxed_Previews: PreviewProvider {
    static var previews: some View {
        Boxed()
    }
}
