//
//  DetailsViewController.swift
//  Top Charts App
//
//  Created by Lynn Thit Nyi Nyi on 16/7/2567 BE.
//

import UIKit

class DetailsViewController: UIViewController {

    
    @IBOutlet weak var appImageView: UIImageView!
    @IBOutlet weak var appShortDescriptionLabel: UILabel!
    @IBOutlet weak var appNameLabel: UILabel!
    
    @IBOutlet weak var ratingsLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var chartLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var screenshot1: UIImageView!
    
    @IBOutlet weak var screenshot2: UIImageView!
    
    @IBOutlet weak var screenshot3: UIImageView!
    
    var appImage: UIImage?
    var appName: String?
    var appShortDescription: String?
    var appRating: Float?
    var chart: Int?
    var age: String?
    var detailedDescription: String?
    
    var appScreenshot1: UIImage?
    var appScreenshot2: UIImage?
    var appScreenshot3: UIImage?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        appImageView.image = appImage
        appNameLabel.text = appName
        appShortDescriptionLabel.text = appShortDescription
        
        screenshot1.image = appScreenshot1
        screenshot2.image = appScreenshot2
        screenshot3.image = appScreenshot3
        
        
        if let rating = appRating {
            ratingsLabel.text = String(rating)
        } else {
            ratingsLabel.text = "N/A"
        }
        ageLabel.text = age
        if let chartPosition = chart {
            chartLabel.text = String(chartPosition)
        } else {
            chartLabel.text = "N/A"
        }
        
        ageLabel.text = age
        descriptionLabel.text = detailedDescription
        
        
        appImageView.layer.masksToBounds = true
        appImageView.layer.cornerRadius = 115/4
        
        screenshot1.layer.masksToBounds = true
        screenshot1.layer.cornerRadius = screenshot1.frame.size.width / 4
        
        screenshot2.layer.masksToBounds = true
        screenshot1.layer.cornerRadius = screenshot2.frame.size.width / 4
        
        screenshot3.layer.masksToBounds = true
        screenshot1.layer.cornerRadius = screenshot3.frame.size.width / 4
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
