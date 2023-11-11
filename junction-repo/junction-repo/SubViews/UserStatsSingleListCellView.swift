//
//  UserStatsSingleCellView.swift
//  junction-repo
//
//  Created by João Barreto do Nascimento on 11.11.2023.
//

import SwiftUI

struct UserStatsSingleListCellView: View {
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Text("Heart Beat")
                    .font(.headline).bold()
                    .foregroundColor(.white)
                    .padding(.top, 4)
                    .padding(.leading, 6)
                    .padding(.bottom)
                
                HStack{
                    Text("100 Bpm")
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white.opacity(0.2))
                        )
                        .frame(width:100, height: 24)
                    
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .padding([.bottom, .trailing, .leading], 4)
                }
            }
            .padding(11)
            .background(.gray.opacity(0.4))
            .cornerRadius(12)
            .shadow(color: .gray, radius: 6, x:0.0 , y: 0.0)
        }
    }
}

#Preview {
    UserStatsSingleListCellView()
}
