//
//  VideoModel.swift
//  Africa
//
//  Created by Hasan Basri Öztürk on 29.09.2022.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
