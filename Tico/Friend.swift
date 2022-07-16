//
//  Friend.swift
//  Tico
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 9/7/22.
//

import Foundation

struct Friend: Identifiable, Codable {
    
    var id = UUID()
    
    // Facts
    var name, school, dateOfBirth: String
    
    // Images
    var icon: String
    
    // Pokemon Type
    var element: String
}
