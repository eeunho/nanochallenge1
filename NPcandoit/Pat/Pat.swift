//
//  Pat.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/01.
//

import SwiftUI

struct Pat: View {
    var body: some View {
        NavigationView {
            TabView {
                VStack {
                    Spacer()
                    
                    HStack {
                        Text("팻을 만나요")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.pyellow)
                        
                        Spacer()
                    }
                    .padding()
                    
                    Pat_CardView1()
                        .padding(.bottom, 200)
                    
                    Spacer()
                }
                
                VStack {
                    Spacer()
                    
                    Pat_CardView2()
                        .padding(.bottom)
                    
                    BoxingButton(buttonLabel: "좋아요")
                        .padding(80)
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
        .navigationBarHidden(true)
    }
}

struct Pat_Previews: PreviewProvider {
    static var previews: some View {
        Pat()
    }
}
