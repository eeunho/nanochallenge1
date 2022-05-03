//
//  Setting.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/02.
//

import SwiftUI

struct Setting: View {
    var body: some View {
        NavigationView{
            List {
                NavigationLink(destination: Text("note")) {
                    Text("설정사항")
                }
            }
            .navigationTitle("설정")
        }
        .navigationBarHidden(true)
    }
}

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting()
    }
}
