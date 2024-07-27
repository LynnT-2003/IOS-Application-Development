//
//  ViewController.swift
//  ReadJSON Practice 101
//
//  Created by Lynn Thit Nyi Nyi on 27/7/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    
    var students: StudentClass? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        students = readJSONFile(named: "Students2", withExtension: "json")
    }
    
    func readJSONFile(named fileName: String, withExtension fileExtension: String) -> StudentClass? {
        // Locate the file in the bundle
        if let fileURL = Bundle.main.url(forResource: fileName, withExtension: fileExtension) {
            do {
                // Read the data from the file
                let data = try Data(contentsOf: fileURL)
                let appInfo = try JSONDecoder().decode(StudentClass.self, from: data)
                return appInfo
            } catch {
                print("Error reading or decoding file: \(error.localizedDescription)")
            }
        } else {
            print("File not found.")
        }
        return nil
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students?.students.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
        let cell = UITableViewCell()
        
        let message = "\(students!.students[index].name)  \(students!.students[index].age) years old"
        
        cell.textLabel?.text = message
        return cell
    }
    
}

