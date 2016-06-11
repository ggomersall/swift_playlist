//
//  ViewController.swift
//  Algorythm
//
//  Created by dev on 11/06/2016.
//  Copyright © 2016 GarethG. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {

    // Here we setup up the button
    @IBOutlet weak var aButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aButton.setTitle("Press Me!", forState: .Normal)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPlaylistDetail" {
            let playlistDetailController = segue.destinationViewController as! PlaylistDetailViewController
            playlistDetailController.segueLabelText = "Yay! you pressed the button."
        }
    }
    
    
}

