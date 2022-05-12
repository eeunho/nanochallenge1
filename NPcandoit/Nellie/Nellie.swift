//
//  Nellie.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/01.
//

import SwiftUI

struct Nellie: View {
    var body: some View {
        NavigationView {
            TabView {
                VStack {
                    Spacer()
                    
                    HStack {
                        Text("넬리를 만나요")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.ngreen)
                        
                        Spacer()
                    }
                    .padding()
                    
                    CardView(texts: nellie1)
                        .padding(.bottom, 200)
                    
                    Spacer()
                }
                
                VStack {
                    Spacer()
                    
                    CardView(texts: nellie2)
                        .padding(.bottom)
                    
                    ButtonView(buttonLabel: "좋아요", destination: AnyView(Boxed()))
                        .padding(80)
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
        .navigationBarHidden(true)
    }
}

struct Nellie_Previews: PreviewProvider {
    static var previews: some View {
        Nellie()
    }
}
