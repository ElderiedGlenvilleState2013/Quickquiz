//
//  WrongVC.swift
//  QuickQuiZ!
//
//  Created by McKinney family  on 5/27/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//


import GoogleMobileAds
import UIKit

class WrongVC: UIViewController {

    
    @IBOutlet weak var bannerView: GADBannerView!
    
    
    @IBOutlet weak var removeAdsBtn: UIButton!
    
    
    
    
    
    
    
    
    
    @IBAction func removeAdsBrnPressed(_ sender: Any) {
        PurchaseManager.instance.purchaseRemoveAds { success in
            if success {
                self.bannerView.removeFromSuperview()
                self.removeAdsBtn.removeFromSuperview()
            } else {
                
            }
        }
    }
    
    
    
    
    @IBAction func startOverBtn(_ sender: Any)  {
    performSegue(withIdentifier: "Gameover", sender: nil)
    
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.bool(forKey: PurchaseManager.instance.TAP_REMOVE_ADS) {
            removeAdsBtn.removeFromSuperview()
            bannerView.removeFromSuperview()
        } else {
            bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
            bannerView.rootViewController = self
            bannerView.load(GADRequest())
            
        }
        
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
