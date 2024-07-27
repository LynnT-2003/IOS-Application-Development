//
//  ViewController.swift
//  vowels-counter
//
//  Created by Lynn Thit Nyi Nyi on 5/7/2567 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vowelTextField: UITextField!
    
    @IBOutlet weak var aCounterLabel: UILabel!
    @IBOutlet weak var eCounterLabel: UILabel!
    @IBOutlet weak var iCounterLabel: UILabel!
    @IBOutlet weak var oCounterLabel: UILabel!
    @IBOutlet weak var uCounterLabel: UILabel!
    
    @IBOutlet weak var aCounterView: UIView!
    @IBOutlet weak var eCounterView: UIView!
    @IBOutlet weak var iCounterView: UIView!
    @IBOutlet weak var oCounterView: UIView!
    @IBOutlet weak var uCounterView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func vowelTextFieldOnEditingChanged(_ sender: Any) {
        if let vowelText = vowelTextField.text {
            var aCount = 0
            var eCount = 0
            var iCount = 0
            var oCount = 0
            var uCount = 0
            
            if vowelText.count == 0 {
                aCounterView.backgroundColor = .opaqueSeparator
                eCounterView.backgroundColor = .opaqueSeparator
                iCounterView.backgroundColor = .opaqueSeparator
                oCounterView.backgroundColor = .opaqueSeparator
                uCounterView.backgroundColor = .opaqueSeparator
            } else {
                for vowel in vowelText.uppercased() {
                    switch vowel{
                    case "A":
                        aCount += 1
                        aCounterView.backgroundColor = .green
                    case "E":
                        eCount += 1
                        eCounterView.backgroundColor = .green
                    case "I":
                        iCount += 1
                        iCounterView.backgroundColor = .green
                    case "O":
                        oCount += 1
                        oCounterView.backgroundColor = .green
                    case "U":
                        uCount += 1
                        uCounterView.backgroundColor = .green
                    default:
                        if aCount == 0{
                            aCounterView.backgroundColor = .opaqueSeparator
                        }
                        if eCount == 0{
                            eCounterView.backgroundColor = .opaqueSeparator
                        }
                        if iCount == 0{
                            iCounterView.backgroundColor = .opaqueSeparator
                        }
                        if oCount == 0{
                            oCounterView.backgroundColor = .opaqueSeparator
                        }
                        if uCount == 0{
                            uCounterView.backgroundColor = .opaqueSeparator
                        }
                    }
                }
            }
            
            aCounterLabel.text = "x\(aCount)"
            eCounterLabel.text = "x\(eCount)"
            iCounterLabel.text = "x\(iCount)"
            oCounterLabel.text = "x\(oCount)"
            uCounterLabel.text = "x\(uCount)"
        }
    }
    
}

