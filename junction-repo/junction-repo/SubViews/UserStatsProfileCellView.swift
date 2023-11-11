//
//  UserStatsProfileCellView.swift
//  junction-repo
//
//  Created by João Barreto do Nascimento on 11.11.2023.
//

import SwiftUI

struct UserStatsProfileCellView: View {
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(.black)
                .frame(width: 160, height: 160)
                .offset(y: -106)
            
            VStack{
                Image("incognito")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 130, height: 130)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    .padding(.bottom, 4)
                
                Text("Complete user name")
                    .padding()
                    .foregroundColor(.black)
                    .font(AppFont.title)

                Text("N/A")
                    .padding(.top, 1)
                    .foregroundColor(.black)
                    .font(AppFont.subtitle)
                
                UserStatsXPBarView(xpPercentage: 45)
                    .padding(.top, -25)
            }
        }
    }
}
        

#Preview {
    UserStatsProfileCellView()
}
