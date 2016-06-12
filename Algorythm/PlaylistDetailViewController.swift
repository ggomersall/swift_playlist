//
//  PlaylistDetailViewController.swift
//  Algorythm
//
//  Created by dev on 11/06/2016.
//  Copyright © 2016 GarethG. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController {

    @IBOutlet weak var buttonPressLabel: UILabel!
    // the optional i.e ?, below makes it nil at first
    var playlist: Playlist?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if playlist != nil {
            
            buttonPressLabel.text = playlist!.title
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    

}
