//
//  MainTabBar.swift
//  CoordinatorNav
//
//  Created by Sergey Basin on 08.08.2021.
//

import UIKit

class MainTabBar: UITabBarController {
    let main = MainCoordinator(navigationController: UINavigationController())

    override func viewDidLoad() {
        super.viewDidLoad()

        main.start()
        viewControllers = [main.navigationController]
    }
}
