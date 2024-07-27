//
//  AppTableViewCell.swift
//  Top Charts App
//
//  Created by Lynn Thit Nyi Nyi on 16/7/2567 BE.
//

import UIKit

class AppTableViewCell: UITableViewCell {
    @IBOutlet weak var appImageView: UIImageView!
    
    @IBOutlet weak var appNameLabel: UILabel!
    
    @IBOutlet weak var shortDescriptionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        appNameLabel.textColor = .brown
        appImageView.layer.masksToBounds = true
        appImageView.layer.cornerRadius = 15
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func getButtonOnClicked(_ sender: Any) {
        print("Get Button Clicked!")
//        let detail = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "detailsPage") as! DetailsViewController
//        navigationController?.pushViewController(detail, animated: true)
    
    }
}
