//
//  ViewController.swift
//  ImageCaching
//
//  Created by SaiSandeep on 26/10/17.
//  Copyright © 2017 iOSRevisited. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // for storing
        let image = UIImage(named: "bg.jpg")
        SSCache.sharedInstance.saveImage(image: image!, Key: "backgroundImage")
        
        // for getting
        if let image2 = SSCache.sharedInstance.getImage(Key: "backgroundImage") {
            print("we got image \(image2)")
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


