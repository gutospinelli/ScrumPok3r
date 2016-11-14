//
//  ViewController.swift
//  ScrumPok3r
//
//  Created by Augusto Spinelli on 14/11/16.
//  Copyright © 2016 Augusto Spinelli. All rights reserved.
//

import UIKit

class Pok3rCardsViewController: UIViewController {

    @IBAction func SelectCard(_ sender: UIButton) {
        sender.titleLabel?.textColor = UIColor.blue
        sender.backgroundColor = UIColor.yellow
        sender.layer.cornerRadius = 5
        sender.layer.borderWidth = 1
        sender.layer.borderColor = UIColor.black.cgColor
    }


}

