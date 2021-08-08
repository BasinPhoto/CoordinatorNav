//
//  FirstCoordinator.swift
//  CoordinatorNav
//
//  Created by Sergey Basin on 08.08.2021.
//

import UIKit

class FirstCoordinator: Coordinator {
    weak var parentCoordinator: MainCoordinator?
    var childCoordinators: [Coordinator] = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = FirstVC.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
//    func closeFirstVC() {
//        parentCoordinator?.childDidFinish(self)
//    }
}
