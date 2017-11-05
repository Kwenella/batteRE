//
//  BatteREViewController.swift
//  BatteRE
//
//  Created by K_R on 11/5/17.
//  Copyright © 2017 K_R. All rights reserved.
//

import Cocoa

class BatteREViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do view setup here.
        
        //self.view.wantsLayer = true
        //let image = NSImage(named: NSImage.Name(rawValue: "backgound.png"))
        //self.view.layer!.contents = image
    }
    
}

extension BatteREViewController {
    // Storyboard instantiation
    static func freshController() -> BatteREViewController {
        //1. Get a reference to Main.storyboard
        let storyboard = NSStoryboard(name: NSStoryboard.Name(rawValue: "Main"), bundle: nil)
        //2. Create a Scene identifier that matches the one you set just before
        let identifier = NSStoryboard.SceneIdentifier(rawValue: "BatteREViewController")
        //3. Instantiate BatteREViewController and return it
        guard let viewcontroller = storyboard.instantiateController(withIdentifier: identifier) as? BatteREViewController else {
            fatalError("Cant find BatteREViewController? - Check Main.storyboard")
        }
        return viewcontroller
    }
}
