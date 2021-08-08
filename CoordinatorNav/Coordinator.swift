//
//  Coordinator.swift
//  CoordinatorNav
//
//  Created by Sergey Basin on 08.08.2021.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    func start()
}
