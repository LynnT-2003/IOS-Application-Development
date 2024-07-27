//
//  SecondPageViewController.swift
//  NavigationVC Practice 101
//
//  Created by Lynn Thit Nyi Nyi on 27/7/2567 BE.
//

import UIKit

class SecondPageViewController: UIViewController {

    @IBOutlet weak var welcomeTextLabel: UILabel!
    
    var welcometext: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        welcomeTextLabel.text = "Welcome \(welcometext!)"
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
