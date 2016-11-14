//
//  CardViewController.swift
//  ScrumPok3r
//
//  Created by Augusto Spinelli on 14/11/16.
//  Copyright © 2016 Augusto Spinelli. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {

    @IBOutlet weak var lbCardSelected: UILabel!
    public var cardSelected : String = "?"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbCardSelected.text = cardSelected
    }



}
