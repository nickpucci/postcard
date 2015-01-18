//
//  ViewController.swift
//  Postcard
//
//  Created by Nick Pucci on 1/11/15.
//  Copyright (c) 2015 Nick Pucci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var enterMessage: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //comment test commit
        messageLabel.hidden = false
        messageLabel.text = enterMessage.text
        messageLabel.textColor = UIColor.redColor()
        enterMessage.text = ""
        enterMessage.resignFirstResponder()
        nameLabel.hidden = false
        nameLabel.text = enterName.text
        nameLabel.textColor = UIColor.blueColor()
        enterName.text = ""
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
       
    }

}

