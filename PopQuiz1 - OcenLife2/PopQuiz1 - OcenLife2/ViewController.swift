//
//  ViewController.swift
//  PopQuiz1 - OcenLife2
//
//  Created by Lynn Thit Nyi Nyi on 15/6/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageLabel: UILabel!
    
    let collection = ["Turtle", "Octopus", "Whale", "Crab"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.isHidden = true
        imageLabel.isHidden = true
    }
    
    @IBAction func randomButtonClicked() {
        let randomIndex = Int(arc4random_uniform(UInt32(collection.count)))
        let selectedImage = collection[randomIndex]
        let selectedLabel = collection[randomIndex]
        
        imageView.image = UIImage(named: selectedImage)
        imageLabel.text = selectedLabel
        
        imageView.isHidden = false
        imageLabel.isHidden = false
    }


}

