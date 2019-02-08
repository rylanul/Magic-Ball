//
//  ViewController.swift
//  Magic Ball
//
//  Created by Rylan Ugalde-Lopez on 2019-02-07.
//  Copyright © 2019 Rylan Ugalde-Lopez. All rights reserved.
//

import UIKit


//import UIKit

class ViewController: UIViewController {
    //Segment for ball faces
    
    var randomMagicIndex : Int = 0
    
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    //
    //ball Image
    
    @IBOutlet weak var ballImageView: UIImageView!
    //
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateBallimages()
    }
    
    
    //Button Code Segment

    @IBAction func shakeBall(_ sender: UIButton) {
         updateBallimages()
    }
    
    // This segment changes Dice faces
    func updateBallimages () {
        randomMagicIndex = Int(arc4random_uniform(5))
        
        
        ballImageView.image = UIImage(named: ballArray[randomMagicIndex])
        
        
    }
    
    
    // Function for when shake is detected.
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallimages()
    }
}




//










