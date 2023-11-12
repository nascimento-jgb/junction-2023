//
//  UserStatsProfileCellView.swift
//  junction-repo
//
//  Created by João Barreto do Nascimento on 11.11.2023.
//

import SwiftUI

struct UserStatsProfileCellView: View {
    var userInfo: UserInfo
    
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(Color(hex: "704CFF"))
                .frame(width: 160, height: 160)
                .offset(y: -106)
            
            VStack{
                Image(userInfo.profileImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 130, height: 130)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    .padding(.bottom, 4)
                
                Text(userInfo.name)
                    .padding()
                    .foregroundColor(.black)
                    .font(Font.custom("Helvetica", size: UIFont.preferredFont(forTextStyle: .title1).pointSize).bold())

                Text(userInfo.rank)
                    .padding(.top, 1)
                    .foregroundColor(.black)
                    .font(Font.custom("Helvetica", size: UIFont.preferredFont(forTextStyle: .title2).pointSize))
                
                UserStatsXPBarView(xpPercentage: Double(userInfo.level))
                    .padding(.top, -25)
            }
        }
    }
}
        

#Preview {
    UserStatsProfileCellView(userInfo: UserInfo(name: "Test User", level: 13, rank: "Rank 7", profileImage: ""))
}
