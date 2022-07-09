//
//  ContentView.swift
//  Tico
//
//  Created by T Krobot on 9/7/22.
//

import SwiftUI

struct ContentView: View {
    
    var friends = [
        Friend(name: "person1", school: "too cool for school", dateOfBirth: 1, monthOfBirth: 1, yearOfBirth: 1, icon: "bolt.fill"),
        Friend(name: "person2", school: "some school", dateOfBirth: 2, monthOfBirth: 2, yearOfBirth: 2, icon: "pawprint.circle.fill")
    ]
    
    var body: some View {
        NavigationView {
            List(friends) { friend in
                NavigationLink(destination: FriendDetailView(friend: friend)) {
                    HStack {
                        Image(systemName: friend.icon)
                        VStack(alignment: .leading) {
                            Text(friend.name)
                                .bold()
                            Text(friend.school)
                        }
                    }
                }
            }
            .navigationTitle("Friends")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
