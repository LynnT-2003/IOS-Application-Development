//
//  ViewController.swift
//  assignment 5 phone app
//
//  Created by Lynn Thit Nyi Nyi on 13/7/2567 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var oneLabel: UIButton!
    @IBOutlet weak var twoLabel: UIButton!
    @IBOutlet weak var threeLabel: UIButton!
    @IBOutlet weak var fourLabel: UIButton!
    @IBOutlet weak var fiveLabel: UIButton!
    @IBOutlet weak var sixLabel: UIButton!
    @IBOutlet weak var sevenLabel: UIButton!
    @IBOutlet weak var eightLabel: UIButton!
    @IBOutlet weak var nineLabel: UIButton!
    @IBOutlet weak var zeroLabel: UIButton!
    
    @IBOutlet weak var asteriskLabel: UIButton!
    @IBOutlet weak var hashLabel: UIButton!
    
    
    @IBOutlet weak var callButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let callIcon = UIImage(systemName: "phone.fill")
        callButton.setImage(callIcon, for: .normal)
        
        let deleteIcon = UIImage(systemName: "delete.left.fill")
        deleteButton.setImage(deleteIcon, for: .normal)
        
        oneLabel.layer.cornerRadius = oneLabel.frame.height/2
        oneLabel.layer.masksToBounds = true
        
        twoLabel.layer.cornerRadius = twoLabel.frame.height/2
        twoLabel.layer.masksToBounds = true
        
        threeLabel.layer.cornerRadius = threeLabel.frame.height/2
        threeLabel.layer.masksToBounds = true
        
        fourLabel.layer.cornerRadius = fourLabel.frame.height/2
        fourLabel.layer.masksToBounds = true
        
        fiveLabel.layer.cornerRadius = fiveLabel.frame.height/2
        fiveLabel.layer.masksToBounds = true
        
        sixLabel.layer.cornerRadius = sixLabel.frame.height/2
        sixLabel.layer.masksToBounds = true
        
        sevenLabel.layer.cornerRadius = sevenLabel.frame.height/2
        sevenLabel.layer.masksToBounds = true
        
        eightLabel.layer.cornerRadius = eightLabel.frame.height/2
        eightLabel.layer.masksToBounds = true
        
        nineLabel.layer.cornerRadius = nineLabel.frame.height/2
        nineLabel.layer.masksToBounds = true
        
        zeroLabel.layer.cornerRadius = zeroLabel.frame.height/2
        zeroLabel.layer.masksToBounds = true
        
        asteriskLabel.layer.cornerRadius = asteriskLabel.frame.height/2
        asteriskLabel.layer.masksToBounds = true
        
        hashLabel.layer.cornerRadius = hashLabel.frame.height/2
        hashLabel.layer.masksToBounds = true
        
        callButton.layer.cornerRadius = callButton.frame.height/2
        callButton.layer.masksToBounds = true
        
        
    }
    
    @IBAction func oneButtonOnClicked(_ sender: Any) {
        textLabel.text?.append("1")
    }
    
    @IBAction func twoButtonOnClicked(_ sender: Any) {
        textLabel.text?.append("2")
    }
    
    @IBAction func threeButtonOnClicked(_ sender: Any) {
        textLabel.text?.append("3")
    }
    
    @IBAction func fourButtonOnClicked(_ sender: Any) {
        textLabel.text?.append("4")
    }
    
    @IBAction func fiveButtonOnClicked(_ sender: Any) {
        textLabel.text?.append("5")
    }
    
    @IBAction func sixButtonOnClicked(_ sender: Any) {
        textLabel.text?.append("6")
    }
    
    @IBAction func sevenButtonOnClicked(_ sender: Any) {
        textLabel.text?.append("7")
    }
    
    @IBAction func eightButtonOnClicked(_ sender: Any) {
        textLabel.text?.append("8")
    }
    
    @IBAction func nineButtonOnClicked(_ sender: Any) {
        textLabel.text?.append("9")
    }
    
    @IBAction func zeroButtonOnClicked(_ sender: Any) {
        textLabel.text?.append("0")
    }
    
    @IBAction func asteriskButtonClicked(_ sender: Any) {
        textLabel.text?.append("*")
    }
    
    @IBAction func hashButtonOnClicked(_ sender: Any) {
        textLabel.text?.append("#")
    }
    
    
    @IBAction func deleteButtonOnClicked(_ sender: Any) {
        textLabel.text?.removeLast()
    }
    
    @IBAction func callButtonOnClicked(_ sender: Any) {
        let secondPage = UIStoryboard(name: "Main", bundle: .main)
            .instantiateViewController(withIdentifier: "secondPage") as! SecondPageViewController
        secondPage.phoneNumber = textLabel.text
        navigationController?.pushViewController(secondPage, animated: true)
    }
    
}

