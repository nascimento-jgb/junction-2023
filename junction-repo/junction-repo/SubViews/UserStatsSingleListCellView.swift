//
//  UserStatsSingleCellView.swift
//  junction-repo
//
//  Created by João Barreto do Nascimento on 11.11.2023.
//

import SwiftUI

struct UserStatsSingleListCellView: View {
    let statsType: String
    let value: Double
    let unit: String
    let imageName: String
    
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Text(statsType)
                    .font(Font.custom("Helvetica", size: UIFont.preferredFont(forTextStyle: .headline).pointSize).bold())
                    .foregroundColor(.white)
                    .padding(.top, 4)
                    .padding(.leading, 6)
                    .padding(.bottom)
                
                HStack{
                    Text(String(Int(value)) + unit)
                        .font(Font.custom("Helvetica", size: UIFont.preferredFont(forTextStyle: .subheadline).pointSize).bold())
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white.opacity(0.2))
                        )
                        .frame(width:100, height: 24)
                    
                    Image(systemName: imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .padding([.bottom, .trailing, .leading], 4)
                        .foregroundColor(Color(hex: "FF4895"))
                }
            }
            .padding(11)
            .background(Color(hex: "704CFF"))
            .cornerRadius(12)
            .shadow(color: Color(hex: "704CFF"), radius: 6, x:0.0 , y: 0.0)
        }
    }
}

struct UserStatsSingleListCellView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsSingleListCellView(statsType: "Sleep Time", value: 360, unit: "min", imageName: "heart")
    }
}

