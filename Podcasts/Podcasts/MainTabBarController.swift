//
//  MainTabBarController.swift
//  Podcasts
//
//  Created by Lynn Thit Nyi Nyi on 24/6/2567 BE.
//

import UIKit
import Foundation

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarAppearance()
        
        let favoritesController = ViewController()
        favoritesController.tabBarItem.title = "Favorites"
        
        let searchNavController = 
            UINavigationController(rootViewController: ViewController())
        searchNavController.tabBarItem.title = "Search"
        
        viewControllers = [
            favoritesController,
            searchNavController
        ]
    }

    private func setupTabBarAppearance() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .white // Set the background color of the tab bar

        tabBar.standardAppearance = appearance
        if #available(iOS 15.0, *) {
            tabBar.scrollEdgeAppearance = appearance
        }
    }
}
