//
//  ViewController.swift
//  MoviesApp
//
//  Created by Эл on 30.01.2023.
//

import UIKit

final class MainTabBarViewController: UITabBarController {
    
    // MARK: - Private properties
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        
        let vcOne = UINavigationController(rootViewController: HomeViewController())
        let vcTwo = UINavigationController(rootViewController: UpcomingViewController())
        let vcThree = UINavigationController(rootViewController: SearchViewController())
        let vcFour = UINavigationController(rootViewController: DownloadsViewController())
        
        vcOne.tabBarItem.image = UIImage(systemName: "house")
        vcTwo.tabBarItem.image = UIImage(systemName: "play.circle")
        vcThree.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vcFour.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        vcOne.title = "Home"
        vcTwo.title = "Coming Soon"
        vcThree.title = "Top Search"
        vcFour.title = "Downloads"
        
        tabBar.tintColor = .label
        
        setViewControllers([vcOne, vcTwo, vcThree, vcFour], animated: true)
    }
}
