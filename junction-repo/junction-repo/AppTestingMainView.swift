//
//  ContentView.swift
//  junction-repo
//
//  Created by João Barreto do Nascimento on 11.11.2023.
//

import SwiftUI

struct AppTestingMainView: View {
    
    var items = viewListing.allCases
    
    var body: some View {
        VStack {
            NavigationView {
                List(items, id: \.self) { item in
                    NavigationLink(destination: destinationView(for: item)) {
                        Text(item.description)
                    }
                }
            }
        }
        .padding()
    }
}

struct AppTestingMainView_Previews: PreviewProvider{
    static var previews: some View {
        AppTestingMainView()
    }
    
}
