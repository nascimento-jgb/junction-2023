//
//  AppTestingMenuViewModel.swift
//  junction-repo
//
//  Created by João Barreto do Nascimento on 11.11.2023.
//

import Foundation

final class appUser: Observable {
    @Published var userInfo: UserInfo
    @Published var userStats: DataHistory
    
    init() {
        self.userInfo = UserInfo(name: "Test User", level: 13, rank: "Rank 7", profileImage: "userImage")
        self.userStats = DataHistory(HealthData: [:])
    }
    
    func fetchData() {
        if let url = Bundle.main.url(forResource: "appMockData", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                self.userStats = try decoder.decode(DataHistory.self, from: data)
            } catch {
                print("Error: \(error)")
            }
        }
    }
}

