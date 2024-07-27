//
//  DetailsViewController.swift
//  NavigationVC-2 Practice 101
//
//  Created by Lynn Thit Nyi Nyi on 27/7/2567 BE.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var course: Course?

    @IBOutlet weak var courseTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        courseTitle.text = course?.title
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
