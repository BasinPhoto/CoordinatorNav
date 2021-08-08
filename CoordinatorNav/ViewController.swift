//
//  ViewController.swift
//  CoordinatorNav
//
//  Created by Sergey Basin on 08.08.2021.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func firstTap(_ sender: Any) {
        coordinator?.toFirstVC()
    }
    
    @IBAction func secondTap(_ sender: Any) {
        coordinator?.toSecondVC(product: segmentControl.selectedSegmentIndex)
    }
}

