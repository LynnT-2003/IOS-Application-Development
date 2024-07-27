//
//  ViewController.swift
//  NavigationVC Practice 101
//
//  Created by Lynn Thit Nyi Nyi on 25/7/2567 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonOnClick(_ sender: Any) {
        let secondPage = UIStoryboard(name: "Main", bundle:.main).instantiateViewController(withIdentifier: "secondPage") as! SecondPageViewController
        
        secondPage.welcometext = nameTextField.text
        
        navigationController?.pushViewController(secondPage, animated: true)
    }
    
}

