//
//  PetStatsView.swift
//  junction-repo
//
//  Created by João Barreto do Nascimento on 11.11.2023.
//

import SwiftUI

struct PetStatsView: View {
    var body: some View {
        ZStack{
            VStack{
                Image("petImage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 175)
                    .padding([.bottom, .top], 10)
                    .foregroundColor(.white)
                
                VStack{
                    Text("PET NAME")
                        .font(.headline).bold()
                        .foregroundColor(.white)
                        .padding(.top, 4)
                        .padding()
                    
                    Text("Rank 1 - Lvl 10")
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(hex: "704CFF").opacity(0.5))
                        )
                        .frame(width:140, height: 24)
                    
                    Text("Here it comes some descripton of the activities for the day.")
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.top, 4)
                        .padding()
                        .multilineTextAlignment(.center)
                    
                    VStack{
                        
                        HStack{
                            Text("Stats1")
                                .font(.subheadline).bold()
                                .foregroundColor(.white)
                                .padding(1)
                                .multilineTextAlignment(.center)
                            
                            Text("value")
                            
                        }
                        .frame(width: 250, height: 25)
                        
                        HStack{
                            Text("Stats2")
                                .font(.subheadline).bold()
                                .foregroundColor(.white)
                                .padding(1)
                                .multilineTextAlignment(.center)
                            
                            Text("value")
                        }
                        
                        HStack{
                            Text("Stats3")
                                .font(.subheadline).bold()
                                .foregroundColor(.white)
                                .padding(1)
                                .multilineTextAlignment(.center)
                            
                            Text("value")
                        }
                        
                        HStack{
                            Text("Stats4")
                                .font(.subheadline).bold()
                                .foregroundColor(.white)
                                .padding(1)
                                .multilineTextAlignment(.center)
                            
                            Text("Value")
                        }
                    }
                    .padding(.bottom, 15)
                        
                }.background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(hex: "704CFF").opacity(0.8)))
            }
            
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color(hex: "704CFF").opacity(0.6), radius: 6, x:0.0 , y: 0.0)
    }
}

#Preview {
    PetStatsView()
}
