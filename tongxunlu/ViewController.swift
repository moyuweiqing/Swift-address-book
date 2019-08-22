//
//  ViewController.swift
//  hellow
//
//  Created by Apple on 2018/9/18.
//  Copyright © 2018年 nucle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var uid: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var hellowtext: UILabel!

    @IBAction func loginbutton(_ sender: Any) {
        if password.text=="123456"
        {hellowtext.text = "hellow " + uid.text!}
        else{ hellowtext.text = "密码错误"}
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func comeback(_ sender: UIStoryboardSegue) {print("comeback")
    }

}

