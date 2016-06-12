//
//  Playlist.swift
//  Algorythm
//
//  Created by dev on 11/06/2016.
//  Copyright © 2016 GarethG. All rights reserved.
//

import Foundation
// inclde UIKIT so allow UIImage and UIColot
import UIKit

struct Playlist {
    
    var title: String?
    var description: String?
    var icon: UIImage?
    var largeIcon: UIImage?
    // [String] means its an array of strings
    var artists: [String] = []
    var backgroundColor: UIColor = UIColor.clearColor()
    
}

