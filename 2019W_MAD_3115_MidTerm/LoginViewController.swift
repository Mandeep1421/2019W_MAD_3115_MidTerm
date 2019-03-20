//
//  ViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var lblUser: UITextField!
    @IBOutlet weak var lblPass: UITextField!
    @IBOutlet weak var lblswtch: UISwitch!
    let userDefault = UserDefaults.standard
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        if let uId = userDefault.string(forKey: "userId")
        {
            lblUser.text = uId
            lblswtch.isOn = true
        }
        if let pass = userDefault.string(forKey: "password")
        {
            lblPass.text = pass
            lblswtch.isOn = true
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func btnRemember(_ sender: UIButton)
    {
        if (lblUser.text == "Admin" && lblPass.text == "123")
        {
            if(lblswtch.isOn)
            {
                userDefault.set(lblUser.text,forKey: "userId")
                userDefault.set(lblPass.text,forKey: "password")
            }
            else
            {
               userDefault.removeObject(forKey: "userId")
                userDefault.removeObject(forKey: "password")
            }
        }
        
        else{
            let alert = UIAlertController(title: "Invalid", message: "Username or Password is Incorrect", preferredStyle: .alert)
            
            let actionDefault = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(actionDefault)
            self.present(alert, animated: true)
        }
        
    }
}

