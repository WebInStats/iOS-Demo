//
//  ViewController.swift
//  DemoExample
//
//  Created by WebInStats on 22/09/2017.
//  Copyright © 2017 WebInStats. All rights reserved.
//

import UIKit
import iOS_wis

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
         let wiso = wis_object()
         var map = [String:String]()
         map["s"] = "4e84-1481"
         map["_cburl"] = "//wisdemo.webinstats.com/"
         map["p"] = "Home Page"
         wiso.execute(view: self, localmap: map)
     
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

