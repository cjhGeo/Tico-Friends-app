//
//  FriendManager.swift
//  Tico
//
//  Created by T Krobot on 16/7/22.
//

import Foundation
import SwiftUI

class FriendManager: ObservableObject {
    @Published var friends: [Friend] = [] {
        didSet {
            save()
        }
    }
    
    let sampleFriends: [Friend] = []
    init() {
        load()
    }
    
    func getArchiveURL() -> URL {
        let plistName = "friends.plist"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        return documentsDirectory.appendingPathComponent(plistName)
    }
    
    func save() {
        let archiveURL = getArchiveURL()
        let propertyListEncoder = PropertyListEncoder()
        let encodedFriend = try? propertyListEncoder.encode(friends)
        try? encodedFriend?.write(to: archiveURL, options: .noFileProtection)
    }
    
    func load() {
        let archiveURL = getArchiveURL()
        let propertyListDecoder = PropertyListDecoder()
        
        var finalFriends: [Friend]!
        
        if let retrievedFriendData = try? Data(contentsOf: archiveURL),
           let decodedFriends = try? propertyListDecoder.decode([Friend].self, from: retrievedFriendData) {
            finalFriends = decodedFriends
        } else {
            finalFriends = sampleFriends
        }
        
        friends = finalFriends
    }
}

