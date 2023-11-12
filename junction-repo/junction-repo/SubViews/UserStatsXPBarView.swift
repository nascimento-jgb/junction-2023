//
//  XPBarView.swift
//  junction-repo
//
//  Created by João Barreto do Nascimento on 11.11.2023.
//

import SwiftUI

struct UserStatsXPBarView: View {
    let xpPercentage: Double
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Lvl \(String(format: "%.2f", xpPercentage))")
                .font(Font.custom("Helvetica", size: UIFont.preferredFont(forTextStyle: .title3).pointSize))
                .foregroundColor(.black)
            
            UserStatsProgressBarView(value: 35, maxValue: 100)
                .progressViewStyle(LinearProgressViewStyle(tint: .blue))
        }
        .padding()
    }
}

#Preview {
    UserStatsXPBarView(xpPercentage: 13)
}
