//
//  IntroVC.swift
//  QuickQuiZ!
//
//  Created by McKinney family  on 5/26/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import UIKit

class IntroVC: UIViewController {

    
    
    
    //outlet
    
    @IBOutlet weak var startBTN: UIButton!
    @IBOutlet weak var instructLbl: UILabel!
    @IBOutlet weak var qQLbl: UILabel!
   
    
    
    
    
    
    
    //ibaction
    @IBAction func continueQuizBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "Questions", sender: nil)
        
    }
    
    
   
    @IBAction func startBTNPressed(_ sender: Any) {
        performSegue(withIdentifier: "Questions", sender: nil)
        
        
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        
        
        
        
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
