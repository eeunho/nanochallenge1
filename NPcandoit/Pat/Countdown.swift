//
//  Countdown.swift
//  NPcandoit
//
//  Created by Seulki Lee on 2022/05/03.
//

import SwiftUI

struct Countdown: View {
    @State private var isShowingDetailView = false
    @State var timeRemaining = 5
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        NavigationView { //
            ZStack {
                Color.backgroundgreen
                    .ignoresSafeArea()
                
                VStack {
                    NavigationLink(destination: GotoWork(), isActive: self.$isShowingDetailView) { EmptyView() }
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
                                    self.isShowingDetailView = true
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
