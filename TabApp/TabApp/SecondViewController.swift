//
//  SecondViewController.swift
//  TabApp
//
//  Created by Fatma Selin Hangişi on 2.08.2018.
//  Copyright © 2018 Fatma Selin Hangişi. All rights reserved.
//

import UIKit
import iOS_wis

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let wiso = Webinstats("//demoapb.webinstats.com/","1525","0")
        var map = [String:String]()
        map["p"] = "Home Page"
        map["_enable_push"] = "1"
        wiso.execute(view: self, localmap: map)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

