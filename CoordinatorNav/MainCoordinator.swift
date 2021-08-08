//
//  MainCoordinator.swift
//  CoordinatorNav
//
//  Created by Sergey Basin on 08.08.2021.
//

import Foundation
import UIKit

class MainCoordinator: NSObject, Coordinator, UINavigationControllerDelegate {
    var childCoordinators: [Coordinator] = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        navigationController.delegate = self
        let vc = ViewController.instantiate()
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func toFirstVC() {
        let child = FirstCoordinator(navigationController: navigationController)
        
        childCoordinators.append(child)
        child.parentCoordinator = self
        child.start()
    }
    
    func toSecondVC(product: Int) {
        let vc = SecondVC.instantiate()
        vc.coordinator = self
        vc.selectedProduct = product
        navigationController.pushViewController(vc, animated: false)
    }
    
    func childDidFinish(_ child: Coordinator?) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        guard let fromVC = navigationController.transitionCoordinator?.viewController(forKey: .from) else { return }
        if navigationController.viewControllers.contains(fromVC) { return }
        
        if let firstVC = fromVC as? FirstVC {
            childDidFinish(firstVC.coordinator)
        }
    }
}
