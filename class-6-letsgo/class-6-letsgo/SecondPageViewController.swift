//
//  SecondPageViewController.swift
//  class-6-letsgo
//
//  Created by Lynn Thit Nyi Nyi on 6/7/2567 BE.
//

import UIKit

class SecondPageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20 // there will be 10 items created in this tableView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! GradeTableViewCell
        cell.courseLabel.text = "iOS App Development"
        cell.gradeLabel.text = "A"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .systemTeal
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.lightGray]
        
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: .add, style: .plain, target: self, action: #selector(addClicked))
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(editClicked))
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    @objc func addClicked() {
        
            let fourthPage = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "fourthPage") as! FourthPageViewController
            navigationController?.pushViewController(fourthPage, animated: true)
    }
    
    @objc func editClicked() {
        
    }
    
    @IBAction func nextClicked(_ sender: Any) {
        let thirdPage = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "thirdPage") as! ThirdPageViewController
        navigationController?.pushViewController(thirdPage, animated: true)
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
