//
//  WinnerVC.swift
//  QuickQuiZ!
//
//  Created by McKinney family  on 5/29/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import UIKit

class WinnerVC: UIViewController {

    
    @IBAction func winBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "StartOver", sender: nil)
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
