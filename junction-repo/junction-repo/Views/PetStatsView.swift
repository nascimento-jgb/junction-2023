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
                Image(systemName: "cloud.sun")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 175)
                    .padding([.bottom, .top], 10)
                
                VStack{
                    Text("Pet name")
                        .font(.headline).bold()
                        .foregroundColor(.black)
                        .padding(.top, 4)
                        .padding()
                    
                    Text("Some subtitle")
                        .font(.subheadline).bold()
                        .foregroundColor(.black)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.blue.opacity(0.5))
                        )
                        .frame(width:100, height: 24)
                    
                    Text("Description")
                        .font(.subheadline).bold()
                        .foregroundColor(.black)
                        .padding(.top, 4)
                        .padding()
                        .multilineTextAlignment(.center)
                    
                    VStack{
                        
                        HStack{
                            Text("Stats1")
                                .font(.subheadline).bold()
                                .foregroundColor(.black)
                                .padding(1)
                                .multilineTextAlignment(.center)
                            
                            Text("value")
                            
                        }
                        .frame(width: 250, height: 25)
                        
                        HStack{
                            Text("Stats2")
                                .font(.subheadline).bold()
                                .foregroundColor(.black)
                                .padding(1)
                                .multilineTextAlignment(.center)
                            
                            Text("value")
                        }
                        
                        HStack{
                            Text("Stats3")
                                .font(.subheadline).bold()
                                .foregroundColor(.black)
                                .padding(1)
                                .multilineTextAlignment(.center)
                            
                            Text("value")
                        }
                        
                        HStack{
                            Text("Stats4")
                                .font(.subheadline).bold()
                                .foregroundColor(.black)
                                .padding(1)
                                .multilineTextAlignment(.center)
                            
                            Text("Value")
                        }
                    }
                    .padding(.bottom, 15)
                        
                }.background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white.opacity(0.95)))
            }
            
        }
        .background(.gray.opacity(0.6))
        .cornerRadius(12)
        .shadow(color: .gray.opacity(0.6), radius: 6, x:0.0 , y: 0.0)
    }
}

#Preview {
    PetStatsView()
}
