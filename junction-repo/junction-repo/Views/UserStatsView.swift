//
//  UserStatsView.swift
//  junction-repo
//
//  Created by João Barreto do Nascimento on 11.11.2023.
//

import Foundation
import SwiftUI

struct UserStatsView: View {
    let newUser: appUser = appUser()
    
    var body: some View {
        UserStatsProfileCellView(userInfo: newUser.userInfo)
        
        ZStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.fixed(180)), GridItem(.fixed(180))], spacing: 20, content: {
                    UserStatsSingleListCellView(statsType: "Sleep Time", value: 360, unit: "min", imageName: "zzz")
                    UserStatsSingleListCellView(statsType: "Energy Burned", value: 770, unit: "kcal", imageName: "flame")
                    UserStatsSingleListCellView(statsType: "Exercise Time", value: 25, unit: "min", imageName: "hare")
                    UserStatsSingleListCellView(statsType: "Heart Rate", value: 93, unit: "bpm", imageName: "heart")
                    UserStatsSingleListCellView(statsType: "Stress Score", value: 60, unit: "%", imageName: "gauge")
                    UserStatsSingleListCellView(statsType: "Step Count", value: 13100, unit: "un", imageName: "arrow.up.arrow.down.circle")
                })
            }
        }
        .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .ignoresSafeArea()
        .onAppear(){
            newUser.fetchData()
        }
    }
}

#Preview {
    UserStatsView()
}
