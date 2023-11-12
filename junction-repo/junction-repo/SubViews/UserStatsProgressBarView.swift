//
//  ProgressBarView.swift
//  junction-repo
//
//  Created by João Barreto do Nascimento on 11.11.2023.
//

import SwiftUI

struct UserStatsProgressBarView: View {
    var value: Double
    var maxValue: Double
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(.gray).opacity(0.1)
                    .frame(width: geometry.size.width, height: 20)
                    .cornerRadius(20, corners: [.topRight, .bottomLeft, .bottomRight])
                    .cornerRadius(8, corners: [.topLeft])
                
                Rectangle()
                    .foregroundColor(Color(hex: "704CFF ").opacity(0.7))
                    .frame(width: geometry.size.width * CGFloat(value / maxValue), height: 20)
                    .cornerRadius(20, corners: [.topRight, .bottomLeft, .bottomRight])
                    .cornerRadius(8, corners: [.topLeft])
            }
        }
    }
}

#Preview {
    UserStatsProgressBarView(value: 35, maxValue: 100)
}
