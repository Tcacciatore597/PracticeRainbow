//
//  ColorsDetailViewController.swift
//  Rainbow
//
//  Created by Thomas Cacciatore on 7/4/21.
//

import UIKit

class ColorsDetailViewController: UIViewController {

    var selectedColor: Color?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = selectedColor?.color
    }
    
}
