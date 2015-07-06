//
//  ViewController.swift
//  ImageManipulator
//
//  Created by Zainuddin Qazi on 7/2/15.
//  Copyright (c) 2015 Zainuddin Qazi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var timer : NSTimer?
    var images : [UIImage?]
    var imageIndex = 0
    
    
    func updateImage() {
        
        imageView.image = images[imageIndex % 5]
        imageIndex = imageIndex + 1
        
    }
    
    required init(coder aDecoder: NSCoder) {
        
        images = [UIImage(named: "charmander1.png"),UIImage(named: "charmander2.gif"),UIImage(named: "charmander3.png"),UIImage(named: "charmander4.png"),UIImage(named: "charmander5.png")]
        
        super.init(coder: aDecoder)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: Selector("updateImage"), userInfo: nil, repeats: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

