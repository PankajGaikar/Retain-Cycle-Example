//
//  RetainCycleViewController.swift
//  Retain Cycle Example
//
//  Created by MMT on 12/08/20.
//  Copyright © 2020 MMT. All rights reserved.
//

import UIKit

class Table {
    var chair: Chair?
    
    deinit {
        print("Deinit called")
    }
}

class Chair {
    var table: Table?
    
    deinit {
        print("Deinit called")
    }
}

class RetainCycleViewController: UIViewController {

    var table = Table()
    var chair = Chair()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func forceRetainCycleAction(_ sender: Any) {
        table.chair = chair
        chair.table = table
    }

}
