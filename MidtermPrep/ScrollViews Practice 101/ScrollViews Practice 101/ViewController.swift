//
//  ViewController.swift
//  ScrollViews Practice 101
//
//  Created by Lynn Thit Nyi Nyi on 24/7/2567 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image1: UIImageView!
    
    @IBOutlet weak var image2: UIImageView!
    
    @IBOutlet weak var image3: UIImageView!
    
    @IBOutlet weak var image4: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        image1.image = UIImage(named: "Whale")
        image2.image = UIImage(named: "SeaOtter")
        image3.image = UIImage(named: "Turtle")
        image4.image = UIImage(named: "Shark")
        
    }


}

