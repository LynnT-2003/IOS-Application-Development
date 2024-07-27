//
//  HomeViewController.swift
//  Top Charts App
//
//  Created by Lynn Thit Nyi Nyi on 16/7/2567 BE.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var topTenApps: [App]? = []
    var selectedAppIndex: IndexPath?
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        topTenApps = readJSONFile(named: "Apps", withExtension: "json")
        
        let appearance = UINavigationBarAppearance()
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topTenApps?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AppTableViewCell
        if let safeModel = topTenApps {
            cell.appImageView.image = UIImage(named: safeModel[indexPath.row].appIcon)
            cell.appNameLabel.text = safeModel[indexPath.row].appName
            cell.shortDescriptionLabel.text = safeModel[indexPath.row].shortDescription
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedAppIndex = indexPath
//        // Just update the selected index; no navigation here
        guard let index = selectedAppIndex else {
            print("No app selected")
            return
        }
        
        
        
        // Instantiate the DetailsViewController
        let detailVC = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "detailsPage") as! DetailsViewController
        
        // Pass the app details to the DetailsViewController
        if let app = topTenApps?[index.row] {
            detailVC.appImage = UIImage(named: app.appIcon)
            detailVC.appName = app.appName
            detailVC.appShortDescription = app.shortDescription
            detailVC.appRating = app.rating
            detailVC.age = app.age
            detailVC.chart = app.topChartPosition
            detailVC.detailedDescription = app.detailedDescription
            detailVC.appScreenshot1 = UIImage(named: app.screenshotGallery[0])
            detailVC.appScreenshot2 = UIImage(named: app.screenshotGallery[1])
            detailVC.appScreenshot3 = UIImage(named: app.screenshotGallery[2])
        }
        
        // Navigate to the DetailsViewController
        navigationController?.pushViewController(detailVC, animated: true)
        
        
    }

    @IBAction func getButtonOnClick(_ sender: Any) {
//        guard let index = selectedAppIndex else {
//            print("No app selected")
//            return
//        }
//        
//        // Instantiate the DetailsViewController
//        let detailVC = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "detailsPage") as! DetailsViewController
//        
//        // Pass the app details to the DetailsViewController
//        if let app = topTenApps?[index.row] {
//            detailVC.appImage = UIImage(named: app.appIcon)
//            detailVC.appName = app.appName
//            detailVC.appShortDescription = app.shortDescription
//            detailVC.appRating = app.rating
//            detailVC.age = app.age
//            detailVC.chart = app.topChartPosition
//            detailVC.detailedDescription = app.detailedDescription
//            detailVC.appScreenshot1 = UIImage(named: app.screenshotGallery[0])
//            detailVC.appScreenshot2 = UIImage(named: app.screenshotGallery[1])
//            detailVC.appScreenshot3 = UIImage(named: app.screenshotGallery[2])
//        }
//        
//        // Navigate to the DetailsViewController
//        navigationController?.pushViewController(detailVC, animated: true)
    }
}

    
    
func readJSONFile(named fileName: String, withExtension fileExtension: String) -> [App]? {
    // Locate the file in the bundle
    if let fileURL = Bundle.main.url(forResource: fileName, withExtension: fileExtension) {
        print("Top ten apps JSON file found.")
        do {
            // Read the data from the file
            let data = try Data(contentsOf: fileURL)
            // Decode the data to the AppInfo struct
            let appInfo = try JSONDecoder().decode(AppsClass.self, from: data)
            print("Apps file successfully read and decoded")
            return appInfo.apps
        } catch {
            print("Error reading or decoding file: \(error.localizedDescription)")
        }
    } else {
        print("File not found.")
    }
    return nil
}
