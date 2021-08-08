//
//  SecondVC.swift
//  CoordinatorNav
//
//  Created by Sergey Basin on 08.08.2021.
//

import UIKit

class SecondVC: UIViewController, Storyboarded {
    @IBOutlet weak var label: UILabel!
    
    weak var coordinator: MainCoordinator?
    var selectedProduct = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = String(selectedProduct)
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
