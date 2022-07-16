//
//  FriendDetailView.swift
//  Tico
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 9/7/22.
//

import SwiftUI

struct FriendDetailView: View {
    
    @State private var attackValue: Double = 0
    @State private var defenceValue: Double = 0
    
    let profilePicSize: CGFloat = 250
    @Binding var friend: Friend
    
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
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
            
            Text("\(friend.name) was born on \(friend.dateOfBirth)")
            
            Slider(value: $attackValue, in: 0...100)
                .padding(EdgeInsets(top: 30, leading: 30, bottom: 0, trailing: 30))
            Text("Attack Value")
                .padding(EdgeInsets(top: 10, leading: 30, bottom: 0, trailing: 20))
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.gray)
            Slider(value: $defenceValue, in: 0...100)
                .padding(EdgeInsets(top: 30, leading: 30, bottom: 0, trailing: 20))
            Text("Defence Value")
                .padding(EdgeInsets(top: 10, leading: 30, bottom: 0, trailing: 30))
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.gray)
            Spacer()
        }
        .navigationTitle(friend.name)
    }
}

struct FriendDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FriendDetailView(friend: .constant(Friend(name: "person1", school: "too cool for school", dateOfBirth: "1", icon: "bolt.fill", element: "fire.fill")))
    }
}
