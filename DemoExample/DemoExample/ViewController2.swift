//
//  ViewController2.swift
//  DemoExample
//
//  Created by Fatma Selin Hangişi on 2.08.2018.
//  Copyright © 2018 Fatma Selin Hangişi. All rights reserved.
//

import UIKit
import iOS_wis

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let wiso = Webinstats("//demoapb.webinstats.com/","1525","0")
        var map = [String:String]()
        map["p"] = "Home Page"
        map["_enable_push"] = "1"
        wiso.execute(view: self, localmap: map)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
