
//
//  ViewController.swift
//  Class 2
//
//  Created by Lynn Thit Nyi Nyi on 15/6/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultMessage: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func animalClicked(button: UIButton) {
        switch button.tag{
        case 1 :
            resultMessage.text = "Crab"
        case 2:
            resultMessage.text = "Turtle"
        default:
            resultMessage.text = ""
        }
    }

    @IBOutlet weak var tutrleClicked: UIImageView!
    
}

