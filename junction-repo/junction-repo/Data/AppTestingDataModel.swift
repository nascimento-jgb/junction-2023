//
//  AppTestingDataModel.swift
//  junction-repo
//
//  Created by João Barreto do Nascimento on 11.11.2023.
//
import SwiftUI
import Foundation

enum viewListing: Int, CaseIterable {
    case userStats
    case petStats
    case groupActivities
    case virtualStore
    
    var description: String {
        switch self {
            case .userStats:
                return "User Stats"
            case .petStats:
                return "Pet Stats"
            case .groupActivities:
                return "Group Activities"
            case .virtualStore:
                return "Virtual Store"
        }
    }
}

@ViewBuilder
func destinationView(for item: viewListing) -> some View {
    switch item {
    case .userStats:
        UserStatsView()
    case .petStats:
        PetStatsView()
    case .groupActivities:
        GroupActivitiesView()
    case .virtualStore:
        VirtualStoreView()
    }
    
}
