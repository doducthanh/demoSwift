//
//  ViewController.swift
//  demoSwift
//
//  Created by Admin on 9/10/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("test")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func click(_ sender: Any) {
        let subView:SubViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SubViewController") as! SubViewController
        self.addChildViewController(subView)
        subView.view.frame = self.view.frame
        subView.didMove(toParentViewController: self)
        self.view.addSubview(subView.view)
    }
}

