//
//  ViewController.swift
//  Ocean Life
//
//  Created by Lynn Thit Nyi Nyi on 14/6/2567 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func crab(){
        label.text = "Crab"
    }

    @IBAction func octopus(){
        label.text = "Octopus"
    }
    
    @IBAction func seaOtter(){
        label.text = "Sea Otter"
    }
    
    @IBAction func shark(){
        label.text = "Shark"
    }
    
    @IBAction func turtle(){
        label.text = "Turtle"
    }
    
    @IBAction func whale(){
        label.text = "Whale"
    }
}

