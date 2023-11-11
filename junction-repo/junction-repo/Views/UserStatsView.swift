//
//  UserStatsView.swift
//  junction-repo
//
//  Created by João Barreto do Nascimento on 11.11.2023.
//

import Foundation
import SwiftUI

//TODO: Fix the display for whole page lenght ignoring safe area
struct UserStatsView: View {
    var body: some View {
        UserStatsProfileCellView()
        
        ZStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.fixed(180)), GridItem(.fixed(180))], spacing: 20, content: {
                    UserStatsSingleListCellView()
                    UserStatsSingleListCellView()
                    UserStatsSingleListCellView()
                    UserStatsSingleListCellView()
                    UserStatsSingleListCellView()
                    UserStatsSingleListCellView()
                    UserStatsSingleListCellView()
                    UserStatsSingleListCellView()
                    UserStatsSingleListCellView()
                    UserStatsSingleListCellView()
                    UserStatsSingleListCellView()
                    UserStatsSingleListCellView()
                    UserStatsSingleListCellView()
                    UserStatsSingleListCellView()
                    UserStatsSingleListCellView()
                    UserStatsSingleListCellView()
                    UserStatsSingleListCellView()
                    UserStatsSingleListCellView()
                    UserStatsSingleListCellView()
                    UserStatsSingleListCellView()
                    
                })
            }
        }
        .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .ignoresSafeArea()
    }
}

#Preview {
    UserStatsView()
}
