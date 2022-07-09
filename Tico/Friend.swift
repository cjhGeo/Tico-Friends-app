//
//  Friend.swift
//  Tico
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 9/7/22.
//

import Foundation

struct Friend: Identifiable {
    
    var id = UUID()
    
    // Facts
    var name, school: String
    var dateOfBirth, monthOfBirth, yearOfBirth: Int
    
    // Images
    var icon: String
    
}
