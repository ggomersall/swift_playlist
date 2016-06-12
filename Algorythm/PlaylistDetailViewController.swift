//
//  PlaylistDetailViewController.swift
//  Algorythm
//
//  Created by dev on 11/06/2016.
//  Copyright © 2016 GarethG. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController {

    // the optional i.e ?, below makes it nil at first
    var playlist: Playlist?
    
    @IBOutlet weak var playlistCoverImage: UIImageView!
    @IBOutlet weak var playlistTitle: UILabel!
    @IBOutlet weak var playlistDescription: UILabel!
    
    
    @IBOutlet weak var playlistArtist0: UILabel!
    @IBOutlet weak var playlistArtist1: UILabel!
    @IBOutlet weak var playlistArtist2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if playlist != nil {
            
            playlistCoverImage.image = playlist!.largeIcon
            playlistCoverImage.backgroundColor = playlist!.backgroundColor
            
            playlistTitle.text = playlist!.title
            playlistDescription.text = playlist!.description
            
            playlistArtist0.text = playlist!.artists[0]
            playlistArtist1.text = playlist!.artists[1]
            playlistArtist2.text = playlist!.artists[2]
            
            
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    

}
