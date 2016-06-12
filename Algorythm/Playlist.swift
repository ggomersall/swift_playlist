//
//  Playlist.swift
//  Algorythm
//
//  Created by dev on 11/06/2016.
//  Copyright © 2016 GarethG. All rights reserved.
//

import Foundation
// inclde UIKIT so allow UIImage and UIColors
import UIKit

struct Playlist {
    
    var title: String?
    var description: String?
    var icon: UIImage?
    var largeIcon: UIImage?
    // [String] means its an array of strings
    var artists: [String] = []
    var backgroundColor: UIColor = UIColor.clearColor()
    
    
    // init below helps setup our playlist struct to access the data i.e. 
    //correct playlist by using an Integer for index of Array
    init(index: Int) {
        //let musicLibrary = MusicLibrary().library
        let musicLibrary = MusicLibrary().library
        let playlistDictionary = musicLibrary[index]
        
        // ! unwraps the optional so that you can use it, i.e. we set String? earlier as above
        // it is important to make sure it exists first before unwrapping the variable
        title = playlistDictionary["title"] as! String!
        description = playlistDictionary["description"] as! String!
        
        // the two below allow you to access the image name to then display the image with UIImage
        let iconName = playlistDictionary["icon"] as! String!
        icon = UIImage(named: iconName)
        
        let largeIconName = playlistDictionary["largeIcon"] as! String!
        largeIcon = UIImage(named: largeIconName)
        
        artists += playlistDictionary["artists"] as! [String]
        
        let colorsDictionary = playlistDictionary["backgroundColor"] as! [String:CGFloat]
        backgroundColor = rgbColorFromDictionary(colorsDictionary)
        
    }
    
    // this will be our helper method to setup the rgba for background colors
    
    func rgbColorFromDictionary(colorDictionary: [String: CGFloat]) -> UIColor {
        
        let red = colorDictionary["red"]!
        let green = colorDictionary["green"]!
        let blue = colorDictionary["blue"]!
        let alpha = colorDictionary["alpha"]!
        
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
    }
    
}

