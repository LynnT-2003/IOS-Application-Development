//
//  ViewController.swift
//  basic info with userdetail
//
//  Created by Lynn Thit Nyi Nyi on 13/7/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var ageInput: UITextField!
    @IBOutlet weak var emailInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let name = UserDefaults.standard.string(forKey: "name") {
            nameInput.text = name
        }
        
        if let age = UserDefaults.standard.string(forKey: "age") {
            ageInput.text = age
        }
        
        if let email = UserDefaults.standard.string(forKey: "email") {
            emailInput.text = email
        }
    }
    
    @IBAction func saveButtonOnClicked(_ sender: Any) {
        let name = nameInput.text ?? ""
        let age = ageInput.text ?? ""
        let email = emailInput.text ?? ""
        
        UserDefaults.standard.set(name, forKey: "name")
        UserDefaults.standard.set(age, forKey: "age")
        UserDefaults.standard.set(email, forKey: "email")
        
        let alert = UIAlertController(title: "Saved!", message: "Your information has been saved.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        
//        alert.addAction(UIAlertAction(title: "Destructive", style: .destructive))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in self.clearButtonOnClicked(sender)
        }))
        
        present(alert, animated: true)
    }
    
    @IBAction func clearButtonOnClicked(_ sender: Any) {
        nameInput.text = ""
        ageInput.text = ""
        emailInput.text = ""
        
        UserDefaults.standard.removeObject(forKey: "name")
        UserDefaults.standard.removeObject(forKey: "age")
        UserDefaults.standard.removeObject(forKey: "email")
    }
    
}

