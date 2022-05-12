//
//  Countdown.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/03.
//

import SwiftUI

// 5,4,3,2,1을 카운트해주는 코드. 카운트다운이 끝나면 다음페이지로 넘어간다.

struct Countdown: View {
    @State private var showDetail = false
    @State var timeRemaining = 5
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        NavigationView { //
            ZStack {
                Color.backgroundgreen
                    .ignoresSafeArea()
                
                VStack {
                    NavigationLink(destination: GotoWork(), isActive: self.$showDetail) { EmptyView() }
                    Button(action: { }) {
                        Text("\(timeRemaining)")
                            .font(.system(size: 200))
                            .fontWeight(.bold)
                            .foregroundColor(.ngreen)
                            .onReceive(timer) { _ in
                                if timeRemaining > 0 {
                                    timeRemaining -= 1
                                }
                                
                                if timeRemaining == 0 {
                                    self.showDetail = true
                                }
                            }
                    }
                    .padding(.bottom)
                }
            }
        }
        .navigationBarHidden(true)
    }
}


struct Countdown_Previews: PreviewProvider {
    static var previews: some View {
        Countdown()
    }
}
