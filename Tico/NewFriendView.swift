//
//  NewFriendView.swift
//  Tico
//
//  Created by T Krobot on 9/7/22.
//

import SwiftUI

struct NewFriendView: View {
    @State var name = ""
    @State var school = ""
    @State var dateOfBirth = ""
    @State var monthOfBirth = ""
    @State var yearOfBirth = ""
    @State var icon = ""
    @Binding var friends: [Friend]
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            TextField("Name", text: $name)
            TextField("School", text: $school)
            TextField("Date of birth", text: $dateOfBirth)
            TextField("Month of birth", text: $monthOfBirth)
            TextField("Year of birth", text: $yearOfBirth)
            TextField("Icon", text: $icon)
            
            Button("Save Todo") {
                
                friends.append(Friend(name: name, school: school, dateOfBirth: dateOfBirth, monthOfBirth: monthOfBirth, yearOfBirth: yearOfBirth, icon: icon))
                dismiss()
            }
        }
    }
}

struct NewFriendView_Previews: PreviewProvider {
    static var previews: some View {
        NewFriendView(friends: .constant([]))
    }
}
