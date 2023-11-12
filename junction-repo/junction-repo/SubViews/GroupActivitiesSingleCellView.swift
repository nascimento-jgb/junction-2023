//
//  GroupActivitiesSingleCellView.swift
//  junction-repo
//
//  Created by João Barreto do Nascimento on 11.11.2023.
//

import SwiftUI

struct GroupActivitiesSingleCellView: View {
   let friend: Friend

   var body: some View {
       HStack {
           Image(friend.image)
               .resizable()
               .frame(width: 50, height: 50)
               .clipShape(Circle())
           VStack(alignment: .leading) {
               Text(friend.name)
                   .font(Font.custom("Helvetica", size: UIFont.preferredFont(forTextStyle: .headline).pointSize))
               Text("Level \(friend.level)")
                   .font(Font.custom("Helvetica", size: UIFont.preferredFont(forTextStyle: .subheadline).pointSize))
           }
           Spacer()
           Button(action: {
               // Handle the challenge button tap here
           }) {
               Text("Challenge")
                  .padding(12)
                  .background(Color(hex: "704CFF"))
                  .foregroundColor(.white)
                  .cornerRadius(10)
                  .font(Font.custom("Helvetica", size: UIFont.preferredFont(forTextStyle: .subheadline).pointSize))
           }
       }
       .frame(maxWidth: .infinity)
   }
}


struct GroupActivitiesSingleCellView_Previews: PreviewProvider {
   static var previews: some View {
       let dummyFriend: Friend = Friend(id: 1, name: "John Doe", level: 5, image: "cloud.sun")
       return GroupActivitiesSingleCellView(friend: dummyFriend)
   }
}

