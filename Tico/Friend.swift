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
    var name, school, dateOfBirth, monthOfBirth, yearOfBirth: String
    
    // Images
    var icon: String
    
}
