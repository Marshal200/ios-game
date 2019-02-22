//
//  ViewController.swift
//  War UI
//
//  Created by test on 15/02/19.
//  Copyright © 2019 cognizant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var btnTrue = false
    
    @IBOutlet weak var LeftImageView: UIImageView!
    
    @IBOutlet weak var RightImageView: UIImageView!
    @IBOutlet weak var LeftScoreCard: UILabel!
    @IBOutlet weak var RightScoreCard: UILabel!
    var LeftScore = 0
    var RightScore = 0
    
    override func viewDidLoad() {
     //   LeftImageView.customMirror
       // RightImageView.customMirror
            super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func DealTapped(_ sender: UIButton) {
        
      
        let left = arc4random_uniform(13)  + 2
        print("the value of left: \(left)")
        let right = arc4random_uniform(13) + 2
        print("the value of right: \(right)")
       // print("Lets Start the Game")
        LeftImageView.image = UIImage(named : "card\(left)")
        RightImageView.image = UIImage(named: "card\(right)")
       if(left > right)
       {
        //updating values
        LeftScore = LeftScore + 1;
        //updating labels
        LeftScoreCard.text = String(LeftScore)
        }
        if(right > left)
        {
            RightScore = RightScore + 1
            RightScoreCard.text = String(RightScore)
        }
        else if(left == right)
        {
            LeftScore = 0
            RightScore = 0
        }
        
    }
    
}

