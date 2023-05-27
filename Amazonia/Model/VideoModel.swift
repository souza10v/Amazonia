//
//  VideoModel.swift
//  Africa
//
//  Created by Donizetti de Souza on 10/22/22.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
