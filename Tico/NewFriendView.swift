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
    @State var icon = ""
    @State var element = ""
    @Binding var friends: [Friend]
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            TextField("Name", text: $name)
            TextField("School", text: $school)
            TextField("Birthday: dd/mm/yyyy", text: $dateOfBirth)
            TextField("Icon", text: $icon)
            TextField("Element", text: $element)
            
            Button("Save Todo") {
                
                friends.append(Friend(name: name, school: school, dateOfBirth: dateOfBirth, icon: icon, element: element))
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
