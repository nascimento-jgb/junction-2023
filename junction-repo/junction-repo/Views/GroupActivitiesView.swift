//
//  GroupActivitiesView.swift
//  junction-repo
//
//  Created by João Barreto do Nascimento on 11.11.2023.
//

import SwiftUI

struct GroupActivitiesView: View {
   var body: some View {
       let friend1 = Friend(id: 1, name: "John Doe", level: 5, image: "friend1")
       let friend2 = Friend(id: 2, name: "Jane Smith", level: 7, image: "friend2")
       let friend3 = Friend(id: 3, name: "Bob Johnson", level: 3, image: "friend3")
       let friends = [friend1, friend2, friend3]
       
           Text("Group Activities")
           .font(Font.custom("Helvetica", size: UIFont.preferredFont(forTextStyle: .largeTitle).pointSize).bold())
               .padding()

           List(friends) { friend in
               Text("Rank \(friend.id) - \(friend.name)")
                   .font(Font.custom("Helvetica", size: UIFont.preferredFont(forTextStyle: .headline).pointSize))
           }
           .listStyle(PlainListStyle())

       ZStack {
           List(friends) { friend in
               GroupActivitiesSingleCellView(friend: friend)
           }
           .listStyle(PlainListStyle())
       }
       .offset(y: -150)
           
   }
}


#Preview {
    GroupActivitiesView()
}
