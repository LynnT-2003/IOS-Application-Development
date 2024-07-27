//
//  ViewController.swift
//  Thai Citizen ID Formatting
//
//  Created by Lynn Thit Nyi Nyi on 30/6/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    
//    @IBOutlet weak var cIdTextField: UITextField!
    
    @IBOutlet weak var cIdTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func formattingNumber(inputString: String) {
        let index = inputString.index(before: inputString.endIndex)
        let firstPart = inputString[..<index]
        let lastPart = inputString[index...]
        cIdTextField.text = "\(firstPart)-\(lastPart)"
    }
    
    @IBAction func idTextFieldOnEditingChanged(_ sender: Any) {
        if let currentInput = cIdTextField.text {
            switch currentInput.count {
            case 2:
                formattingNumber(inputString: currentInput)
            case 7:
                formattingNumber(inputString: currentInput)
            case 14:
                formattingNumber(inputString: currentInput)
            case 17:
                formattingNumber(inputString: currentInput)
                cIdTextField.resignFirstResponder()
            default:
                print(cIdTextField.text ?? "")
            }
        }
    }
    
    @IBAction func doneButtonClicked(_ sender: Any) {
        cIdTextField.resignFirstResponder()
    }
}



