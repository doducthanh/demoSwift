//
//  SubViewController.swift
//  demoSwift
//
//  Created by Admin on 9/10/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class SubViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.gray
        show()
        // Do any additional setup after loading the view.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func close(_ sender: Any) {
        showClose()
    }
    
    func show() {
        self.view.alpha = 0
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        
        UIView.animate(withDuration: 0.5) { 
            self.view.alpha = 1
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)

        }
    }
    
    func showClose() {
        self.view.alpha = 1
        self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        
        UIView.animate(withDuration: 0.5, animations: { 
            self.view.alpha = 0
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)

        }) { (true) in
            self.view.removeFromSuperview()
        }
    
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
