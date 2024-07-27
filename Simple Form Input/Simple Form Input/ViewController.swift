//
//  ViewController.swift
//  Simple Form Input
//
//  Created by Lynn Thit Nyi Nyi on 14/6/2567 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var firstName: UITextField!
    @IBOutlet var lastName: UITextField!
    @IBOutlet var age: UITextField!
    @IBOutlet var lblname: UILabel!
    @IBOutlet var lblage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonClicked(){
        let fn = firstName.text ?? ""
        let ln = lastName.text ?? ""
        let age = age.text ?? ""
        
        lblname.text = "Your name is \(fn) \(ln)."
        lblage.text = "You are \(age) years old."
    }

}

