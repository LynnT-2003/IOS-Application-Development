//
//  SecondPageViewController.swift
//  assignment 5 phone app
//
//  Created by Lynn Thit Nyi Nyi on 14/7/2567 BE.
//

import UIKit

class SecondPageViewController: UIViewController {
    
    @IBOutlet weak var endCallButton: UIButton!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    var phoneNumber: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.navigationItem.hidesBackButton = true
        phoneNumberLabel.text = phoneNumber
        
        endCallButton.layer.cornerRadius = endCallButton.frame.height/2
        endCallButton.layer.masksToBounds = true
        
        let endCallIcon = UIImage(systemName: "phone.down.fill")
        endCallButton.setImage(endCallIcon, for: .normal)
    }
    
    @IBAction func endCallButtonOnClicked(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
