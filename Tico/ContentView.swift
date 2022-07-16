//
//  ContentView.swift
//  Tico
//
//  Created by T Krobot on 9/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var friends = [
        Friend(name: "person1",
               school: "too cool for school",
               dateOfBirth: "11/1/1111",
               icon: "bolt.fill",
               element: "flame.fill"),
        Friend(name: "person2",
               school: "some school",
               dateOfBirth: "22/2/2222",
               icon: "pawprint.circle.fill",
               element: "snowflake")
    ]
    
    @State var isSheetPresented = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach($friends) { $friend in
                    NavigationLink(destination: FriendDetailView(friend: $friend)) {
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
            }
            .navigationTitle("Friends")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isSheetPresented = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
        .sheet(isPresented: $isSheetPresented) {
            NewFriendView(friends: $friends)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
