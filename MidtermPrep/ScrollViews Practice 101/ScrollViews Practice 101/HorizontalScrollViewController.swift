//
//  HorizontalScrollViewController.swift
//  ScrollViews Practice 101
//
//  Created by Lynn Thit Nyi Nyi on 25/7/2567 BE.
//

import UIKit

class HorizontalScrollViewController: UIViewController {

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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
