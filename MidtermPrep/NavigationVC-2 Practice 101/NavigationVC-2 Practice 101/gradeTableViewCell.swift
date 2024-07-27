//
//  gradeTableViewCell.swift
//  NavigationVC-2 Practice 101
//
//  Created by Lynn Thit Nyi Nyi on 27/7/2567 BE.
//

import UIKit

class gradeTableViewCell: UITableViewCell {

    
    @IBOutlet weak var courseLabel: UILabel!
    @IBOutlet weak var gradeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
