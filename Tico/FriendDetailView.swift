//
//  FriendDetailView.swift
//  Tico
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 9/7/22.
//

import SwiftUI

struct FriendDetailView: View {
    
    let profilePicSize: CGFloat = 250
    var friend: Friend
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Rectangle()
                    .frame(height: 300)
                    //.resizeable()
                    //.scaledToFill()
                Text("Placeholder")
                    .foregroundColor(.white)
                    .offset(y: -30)
            }
            
            ZStack {
                Rectangle()
                //.resizeable()
                //.scaledToFill()
                    .foregroundColor(.gray)
                    .frame(width: profilePicSize, height: profilePicSize)
                    .mask(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 8)
                            .foregroundColor(.white)
                    )
                    .offset(y: -profilePicSize / 2)
                    .shadow(radius: 6)
                    .padding(.bottom, -profilePicSize / 2)
                Text("Placeholder")
                    .offset(y: -60)
            }
            
            Text("\(Image(systemName: friend.icon)) \(friend.name)")
                .font(.system(size: 24))
                .padding()
                .offset(y: 15)
            
            Text("\(friend.name) was born on \(friend.dateOfBirth) / \(friend.monthOfBirth) / \(String(friend.yearOfBirth))")
            
            Spacer()
        }
        .navigationTitle(friend.name)
    }
}

struct FriendDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FriendDetailView(friend: Friend(name: "person1", school: "too cool for school", dateOfBirth: 1, monthOfBirth: 1, yearOfBirth: 1, icon: "bolt.fill"))
    }
}
