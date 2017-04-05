//
//  ViewController.swift
//  ScrumPok3r
//
//  Created by Augusto Spinelli on 14/11/16.
//  Copyright © 2016 Augusto Spinelli. All rights reserved.
//

import UIKit
import GoogleMobileAds

class Pok3rCardsViewController: UIViewController, GADBannerViewDelegate {

    var cardSelected = false
    var buttonSelected: UIButton?
  
    @IBOutlet weak var bannerView: GADBannerView!
  
    override func viewDidLoad() {
      super.viewDidLoad()
    
      bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
      bannerView.rootViewController = self
      bannerView.delegate = self
      bannerView.load(GADRequest())
    }
  
    @IBAction func SelectCard(_ sender: UIButton) {
        if cardSelected {
            if buttonSelected != sender {
                unselectCard(card: buttonSelected!)
                selectCard(card: sender)
            }
        } else {
            selectCard(card: sender)
        }
        
    }
    
    func selectCard(card: UIButton) {
        card.backgroundColor = #colorLiteral(red: 0.9995340705, green: 0.988355577, blue: 0.4726552367, alpha: 1)
        card.layer.cornerRadius = 5
        card.layer.borderWidth = 1
        card.layer.borderColor = UIColor.black.cgColor
        card.titleLabel?.textColor = #colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1)
        cardSelected = true
        buttonSelected = card
    }
    
    func unselectCard(card: UIButton) {
        card.backgroundColor = #colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1)
        card.layer.cornerRadius = 0
        card.layer.borderWidth = 0
        card.layer.borderColor = #colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1).cgColor
        card.titleLabel?.textColor = #colorLiteral(red: 0.5787474513, green: 0.3215198815, blue: 0, alpha: 1)
        cardSelected = false
        buttonSelected = nil
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if cardSelected {
            let cardVC : CardViewController = segue.destination as! CardViewController
            cardVC.cardSelected = (buttonSelected?.titleLabel?.text)!
        }
    }
  
  func adViewDidReceiveAd(_ bannerView: GADBannerView) {
    print("Banner loaded successfully")
    
  }
  
  func adView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: GADRequestError) {
    print("Fail to receive ads")
    print(error)
  }
  

}

