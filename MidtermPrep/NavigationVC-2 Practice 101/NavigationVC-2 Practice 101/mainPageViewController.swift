//
//  mainPageViewController.swift
//  NavigationVC-2 Practice 101
//
//  Created by Lynn Thit Nyi Nyi on 27/7/2567 BE.
//

import UIKit

class mainPageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let courses: [Course] = [Course(title: "Senior Project 1", grade: "A"), Course(title: "Cisco Networking", grade: "B+"), Course(title: "Android App Development", grade: "A-"), Course(title: "Cloud Computing", grade: "A")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! gradeTableViewCell
        cell.courseLabel.text = courses[index].title
        cell.gradeLabel.text = courses[index].grade
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = indexPath.row
        let detailPage = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "detailsPage") as! DetailsViewController
        detailPage.course = courses[index] // pass in data here like so
        navigationController?.pushViewController(detailPage, animated: true)
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .orange
        appearance.titleTextAttributes = [.foregroundColor: UIColor.green]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.purple]
        
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: .add, style: .plain, target: self, action: #selector(addClicked))
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(editClicked))
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.contentInset = UIEdgeInsets(top: 60, left: 0, bottom: 0, right: 0)
        
    }
    
    @objc func addClicked() {
        let addPage = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "addPage")
        
        navigationController?.pushViewController(addPage, animated: true)
    }
    
    @objc func editClicked() {
        let editPage = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "editPage")
        
        navigationController?.pushViewController(editPage, animated: true)
    }
    
    @IBAction func nextButtonOnClick(_ sender: Any) {
        let secondPage = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "secondPage") as! secondPageViewController
        
        navigationController?.pushViewController(secondPage, animated: true)
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
