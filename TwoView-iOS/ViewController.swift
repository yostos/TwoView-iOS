//
//  ViewController.swift
//  TwoView-iOS
//
//  Created by Toshiyuki Yoshida on 2015/03/11.
//  Copyright (c) 2015年 Toshiyuki Yoshida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func pushButton(sender: AnyObject) {
        performSegueWithIdentifier("next1",sender: nil)
    }
}

