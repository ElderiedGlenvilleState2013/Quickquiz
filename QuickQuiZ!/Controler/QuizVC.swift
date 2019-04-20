//
//  QuizVC.swift
//  QuickQuiZ!
//
//  Created by McKinney family  on 5/26/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import UIKit

class QuizVC: UIViewController {

    
    //var
    var TIME = 60
    var TIMER = Timer()
    @objc func decreaseTimer() {
        if TIME > 0 {
            TIME -= 1
            checkTimeLbl.text = String(TIME)
        } else {
            TIMER.invalidate()
            
        }
    }
    
    //outlets
    @IBOutlet weak var checkTimeLbl: UILabel!
    @IBOutlet weak var trueQOneBTN: UIButton!
    @IBOutlet weak var questionOneLbl: UILabel!
    @IBOutlet weak var falseQOneBTN: UIButton!
    @IBOutlet weak var questionTwoLbl: UILabel!
    @IBOutlet weak var trueQTwoBtn: UIButton!
    @IBOutlet weak var falseQTwoBtn: UIButton!
    @IBOutlet weak var falseQThreeBtn: UIButton!
    @IBOutlet weak var trueQThreeBtn: UIButton!
    @IBOutlet weak var trueQFourBTN: UIButton!
    @IBOutlet weak var falseQFourBTN: UIButton!
    @IBOutlet weak var falseQFiveBtn: UIButton!
    @IBOutlet weak var trueQFiveBtn: UIButton!
    @IBOutlet weak var questionFiveLbl: UILabel!
    @IBOutlet weak var questionThreeLbl: UILabel!
    @IBOutlet weak var questionFourLbl: UILabel!
    @IBOutlet weak var timeCheckBtn: UIButton!
    
    
    
    
    
    
    
    
//ibfunc
    /*
    @IBAction func checkTimeBtnPressed(_ sender: Any) {
        
        UIView.animate(withDuration: 2.3, animations: {
            self.timeCheckView.frame = CGRect(x: 0, y: 100, width: 350, height: 120)
        }) {(finished) in
            
        }
        self.timeCheckView.isHidden = false
        self.checkTimeLbl.isHidden = false
        self.timeCheckBtn.isHidden = false
    }
    */
  
    
    
    //ibaction question 1
    @IBAction func trueQONEBTNPressed(_ sender: Any) {
        falseQOneBTN.isHidden = true
        trueQOneBTN.isHidden = true
        questionOneLbl.isHidden = true
        questionTwoLbl.isHidden = false
        trueQTwoBtn.isHidden = false
        falseQTwoBtn.isHidden = false
        
         TIMER = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(QuizVC.decreaseTimer), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func falseQOneBTNPressed(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Sorry", message: "Wrong Answer", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Game Over!", style: .default, handler: { (ACTION) in
            
            print("button pressed")
            
            self.performSegue(withIdentifier: "WrongSG", sender: nil)
            
        }))
        
        self.present(alertController, animated: true, completion: nil)
        
        TIMER.invalidate()
        
    }
    
    
    //question 2
    
    @IBAction func trueQTwoBTNPressed(_ sender: Any) {
        let alertController = UIAlertController(title: "Sorry", message: "Wrong Answer", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Game Over!", style: .default, handler: { (ACTION) in
            
            print("button pressed")
            
            self.performSegue(withIdentifier: "WrongSG", sender: nil)
            
        }))
        
        self.present(alertController, animated: true, completion: nil)
        
        TIMER.invalidate()
        
    }
    
    @IBAction func falseQTwoBtnPressed(_ sender: Any) {
        questionTwoLbl.isHidden = true
        questionThreeLbl.isHidden = false
        falseQTwoBtn.isHidden = true
        trueQTwoBtn.isHidden = true
        trueQThreeBtn.isHidden = false
        falseQThreeBtn.isHidden = false
        
        
    }
    
    //question 3
    
    @IBAction func trueQThreeBtnPressed(_ sender: Any) {
        questionThreeLbl.isHidden = true
        questionFourLbl.isHidden = false
        falseQThreeBtn.isHidden = true
        trueQThreeBtn.isHidden = true
        trueQFourBTN.isHidden = false
        falseQFourBTN.isHidden = false
        
        
        
    }
    
    @IBAction func falseQThreeBtnPressed(_ sender: Any) {
        let alertController = UIAlertController(title: "Sorry", message: "Wrong Answer", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Game Over!", style: .default, handler: { (ACTION) in
            
            print("button pressed")
            
            self.performSegue(withIdentifier: "WrongSG", sender: nil)
            
        }))
        
        self.present(alertController, animated: true, completion: nil)
        
        TIMER.invalidate()
        
    }
    
    //question 4
    
    @IBAction func trueQFourBtnPressed(_ sender: Any) {
        questionFourLbl.isHidden = true
        falseQFourBTN.isHidden = true
        trueQFourBTN.isHidden = true
        questionFiveLbl.isHidden = false
        trueQFiveBtn.isHidden = false
        falseQFiveBtn.isHidden = false 
        
    }
    
    @IBAction func falseQFourBtnPressed(_ sender: Any) {
        let alertController = UIAlertController(title: "Sorry", message: "Wrong Answer", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Game Over!", style: .default, handler: { (ACTION) in
            
            print("button pressed")
            
            self.performSegue(withIdentifier: "WrongSG", sender: nil)
            
        }))
        
        self.present(alertController, animated: true, completion: nil)
        
        TIMER.invalidate()
        
    }
    
    
    //question 5
    @IBAction func trueQFiveBtnPressed(_ sender: Any) {
        questionFiveLbl.isHidden = true
        questionSixLbl.isHidden = false
        trueQFiveBtn.isHidden = true
        falseQFiveBtn.isHidden = true
        trueQSixBtn.isHidden = false
        falseQSixBtn.isHidden = false
        
    }
    
    
   
    
    
    @IBAction func falseQFivePressed(_ sender: Any) {
        let alertController = UIAlertController(title: "Sorry", message: "Wrong Answer", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Game Over!", style: .default, handler: { (ACTION) in
            
            print("button pressed")
            
            self.performSegue(withIdentifier: "WrongSG", sender: nil)
            
        }))
        
        self.present(alertController, animated: true, completion: nil)
        
        TIMER.invalidate()
        
        
    }
    
    
    
    
    
    //question 6
    //Q6 outlets
    @IBOutlet weak var questionSixLbl: UILabel!
    @IBOutlet weak var trueQSixBtn: UIButton!
    @IBOutlet weak var falseQSixBtn: UIButton!
    
    //Q6 true and false func -A = True
    @IBAction func trueQSixBtnPressed(_ sender: Any) {
        questionSixLbl.isHidden = true
        questionSevenLbl.isHidden = false
        trueQSixBtn.isHidden = true
        falseQSixBtn.isHidden = true
        trueQSevenBtn.isHidden = false
        falseQSevenBtn.isHidden = false
        
    }
    
    @IBAction func falseQSixBtnPressed(_ sender: Any)  {
        
        let alertController = UIAlertController(title: "Sorry", message: "Wrong Answer", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Game Over!", style: .default, handler: { (ACTION) in
            
            print("button pressed")
            
            self.performSegue(withIdentifier: "WrongSG", sender: nil)
            
        }))
        
        self.present(alertController, animated: true, completion: nil)
        
        TIMER.invalidate()
        
        
    }
    
    
    
    
    
    
    //question 7 A = true
    //outlets
    @IBOutlet weak var questionSevenLbl: UILabel!
    @IBOutlet weak var trueQSevenBtn: UIButton!
    @IBOutlet weak var falseQSevenBtn: UIButton!
    
    
    // true and false func
    @IBAction func trueQSevenBtnPressed(_ sender: Any) {
        questionSevenLbl.isHidden = true
        questionEightLbl.isHidden = false
        trueQSevenBtn.isHidden = true
        falseQSevenBtn.isHidden = true
        trueQEightBtn.isHidden = false
        falseQEightBtn.isHidden = false
        
    }
    
    @IBAction func falseQSevenBtnPressed(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Sorry", message: "Wrong Answer", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Game Over!", style: .default, handler: { (ACTION) in
            
            print("button pressed")
            
            self.performSegue(withIdentifier: "WrongSG", sender: nil)
            
        }))
        
        self.present(alertController, animated: true, completion: nil)
        
        TIMER.invalidate()
        
        
    }
    
    
    
    
    
    
    
    //question 8
    //outlets
    @IBOutlet weak var questionEightLbl: UILabel!
    @IBOutlet weak var trueQEightBtn: UIButton!
    @IBOutlet weak var falseQEightBtn: UIButton!
    
    

    
    
    // true and false func  A = false
    @IBAction func trueQEightBtnPressed(_ sender: Any) {
        let alertController = UIAlertController(title: "Sorry", message: "Wrong Answer", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Game Over!", style: .default, handler: { (ACTION) in
            
            print("button pressed")
            
            self.performSegue(withIdentifier: "WrongSG", sender: nil)
            
        }))
        
        self.present(alertController, animated: true, completion: nil)
        
        TIMER.invalidate()
        
        
    }
    
    
    @IBAction func falseQEightBtnPressed(_ sender: Any) {
        questionEightLbl.isHidden = true
        questionNineLbl.isHidden = false
        trueQEightBtn.isHidden = true
        falseQEightBtn.isHidden = true
        trueQNineBtn.isHidden = false
        falseQNineBtn.isHidden = false
        
    }
    
    
    
    
    
    
    
    //question 9
    //outlets
    @IBOutlet weak var questionNineLbl: UILabel!
    @IBOutlet weak var trueQNineBtn: UIButton!
    @IBOutlet weak var falseQNineBtn: UIButton!
    
    
    //true and fals func  A = True
    @IBAction func trueQNineBtnPressed(_ sender: Any) {
        questionNineLbl.isHidden = true
        questionTenLbl.isHidden = false
        trueQNineBtn.isHidden = true
        falseQNineBtn.isHidden = true
        trueQTenBtn.isHidden = false
        falseQTenBtn.isHidden = false
        
    }
    
    
    @IBAction func falseQNineBtnPressed(_ sender: Any) {
        let alertController = UIAlertController(title: "Sorry", message: "Wrong Answer", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Game Over!", style: .default, handler: { (ACTION) in
            
            print("button pressed")
            
            self.performSegue(withIdentifier: "WrongSG", sender: nil)
            
        }))
        
        self.present(alertController, animated: true, completion: nil)
        
        TIMER.invalidate()
        
    }
    
    
    
    
    
    
    
    
    //question 10
    //outlet
    @IBOutlet weak var questionTenLbl: UILabel!
    @IBOutlet weak var trueQTenBtn: UIButton!
    @IBOutlet weak var falseQTenBtn: UIButton!
    
    
    //true and false func   A = True
    @IBAction func trueQTenBtnPressed(_ sender: Any) {
        questionTenLbl.isHidden = true
        questionElevenLbl.isHidden = false
        trueQTenBtn.isHidden = true
        falseQTenBtn.isHidden = true
        trueQElevenBtn.isHidden = false
        falseQElevenBtn.isHidden = false
        
    }
    
    @IBAction func falseQTenBtnPressed(_ sender: Any) {
        let alertController = UIAlertController(title: "Sorry", message: "Wrong Answer", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Game Over!", style: .default, handler: { (ACTION) in
            
            print("button pressed")
            
            self.performSegue(withIdentifier: "WrongSG", sender: nil)
            
        }))
        
        self.present(alertController, animated: true, completion: nil)
        
        TIMER.invalidate()
        
    }
    
    
    
    
    //question 11  A = false
    //outlets
    @IBOutlet weak var questionElevenLbl: UILabel!
    @IBOutlet weak var trueQElevenBtn: UIButton!
    @IBOutlet weak var falseQElevenBtn: UIButton!
    
    
    //true and false func
    @IBAction func trueQElevenBtnPressed(_ sender: Any) {
        let alertController = UIAlertController(title: "Sorry", message: "Wrong Answer", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Game Over!", style: .default, handler: { (ACTION) in
            
            print("button pressed")
            
            self.performSegue(withIdentifier: "WrongSG", sender: nil)
            
        }))
        
        self.present(alertController, animated: true, completion: nil)
        
        TIMER.invalidate()
        
    }
    
    
    @IBAction func falseQElevenBtnPressed(_ sender: Any) {
        questionElevenLbl.isHidden = true
        trueQElevenBtn.isHidden = true
        falseQElevenBtn.isHidden = true
        questionTwelveLbl.isHidden = false 
        trueQTwelveBtn.isHidden = false
        falseQTwelveBtn.isHidden = false 
    }
    
    
    
    
    
    
    
    //question 12      A = false 
    //outlets
    @IBOutlet weak var questionTwelveLbl: UILabel!
    @IBOutlet weak var trueQTwelveBtn: UIButton!
    @IBOutlet weak var falseQTwelveBtn: UIButton!
    
    
    
   //true and false func
    @IBAction func trueQTwelveBtnPressed(_ sender: Any) {
        let alertController = UIAlertController(title: "Sorry", message: "Wrong Answer", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Game Over!", style: .default, handler: { (ACTION) in
            
            print("button pressed")
            
            self.performSegue(withIdentifier: "WrongSG", sender: nil)
            
        }))
        
        self.present(alertController, animated: true, completion: nil)
        
        TIMER.invalidate()
        
        
        
    }
    
    
    @IBAction func falseQTwelveBtnPressed(_ sender: Any) {
       questionTwelveLbl.isHidden = true
        questionThirteenLbl.isHidden = false
        trueQTwelveBtn.isHidden = true
        falseQTwelveBtn.isHidden = true
        trueQThirteenBtn.isHidden = false
        falseQThirteenBtn.isHidden = false
        
    }
    
    
    
    
    
    
    
    
    
    
    //question 13  A = True
    //outlets
    @IBOutlet weak var questionThirteenLbl: UILabel!
    @IBOutlet weak var trueQThirteenBtn: UIButton!
    @IBOutlet weak var falseQThirteenBtn: UIButton!
    
    
    
    //true and false func
    @IBAction func trueQThirteenBtnPressed(_ sender: Any) {
        questionThirteenLbl.isHidden = true
        questionFourteenLbl.isHidden = false
        trueQThirteenBtn.isHidden = true
        falseQThirteenBtn.isHidden = true
        trueQFourteenBtn.isHidden = false
        falseQFourteenBtn.isHidden = false
        
    }
    
    @IBAction func falseQThirteenBtnPressed(_ sender: Any) {
        let alertController = UIAlertController(title: "Sorry", message: "Wrong Answer", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Game Over!", style: .default, handler: { (ACTION) in
            
            print("button pressed")
            
            self.performSegue(withIdentifier: "WrongSG", sender: nil)
            
        }))
        
        self.present(alertController, animated: true, completion: nil)
        
        TIMER.invalidate()
        
        
    }
    
    
    
    
    
    //question 14  A = False
    //outlets
    @IBOutlet weak var questionFourteenLbl: UILabel!
    @IBOutlet weak var trueQFourteenBtn: UIButton!
    @IBOutlet weak var falseQFourteenBtn: UIButton!
    
    
    
    //true and false func
    @IBAction func trueQFourteenBtnPressed(_ sender: Any) {
        let alertController = UIAlertController(title: "Sorry", message: "Wrong Answer", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Game Over!", style: .default, handler: { (ACTION) in
            
            print("button pressed")
            
            self.performSegue(withIdentifier: "WrongSG", sender: nil)
            
        }))
        
        self.present(alertController, animated: true, completion: nil)
        
        TIMER.invalidate()
        
    }
    
    @IBAction func falseQFourteenBtnPressed(_ sender: Any) {
        questionFourteenLbl.isHidden = true
        trueQFourteenBtn.isHidden = true
        falseQFourteenBtn.isHidden = true
        questionFifteenLbl.isHidden = false
        trueQFifteenBtn.isHidden = false
        falseQFifteenBtn.isHidden = false
        
    }
    
    
    
    
    
    
    
    
    
    
    //question 15 A = true
    //outlet
    @IBOutlet weak var questionFifteenLbl: UILabel!
    @IBOutlet weak var trueQFifteenBtn: UIButton!
    @IBOutlet weak var falseQFifteenBtn: UIButton!
    
    
    
    
    
    //true and false func
    @IBAction func trueQFifteenBtnPressed(_ sender: Any) {
        questionFifteenLbl.isHidden = true
        trueQFifteenBtn.isHidden = true
        falseQFifteenBtn.isHidden = true
        questionSixteenLbl.isHidden = false
        trueQSixteenBtn.isHidden = false
        falseQSixteenBtn.isHidden = false
    }
    
    
    @IBAction func falseQFifteenBtnPressed(_ sender: Any) {
        let alertController = UIAlertController(title: "Sorry", message: "Wrong Answer", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Game Over!", style: .default, handler: { (ACTION) in
            
            print("button pressed")
            
            self.performSegue(withIdentifier: "WrongSG", sender: nil)
            
        }))
        
        self.present(alertController, animated: true, completion: nil)
        
        TIMER.invalidate()
        
    }
    
    
    
    
    
    
    
    
    //question 16 A = True
    //outlets
    @IBOutlet weak var questionSixteenLbl: UILabel!
    @IBOutlet weak var trueQSixteenBtn: UIButton!
    @IBOutlet weak var falseQSixteenBtn: UIButton!
    
    
    
    
    //true and false func   (q16)
    @IBAction func trueQSixteenBtnPressed(_ sender: Any) {
        questionSixteenLbl.isHidden = true
        trueQSixteenBtn.isHidden = true
        falseQSixteenBtn.isHidden = true
        questionSeventeenLbl.isHidden = false
        trueQSeventeenBtn.isHidden = false
        falseQSeventennBtn.isHidden = false
    }
    
    
    @IBAction func falseQSixteenBtnPressed(_ sender: Any) {
        let alertController = UIAlertController(title: "Sorry", message: "Wrong Answer", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Game Over!", style: .default, handler: { (ACTION) in
            
            print("button pressed")
            
            self.performSegue(withIdentifier: "WrongSG", sender: nil)
            
        }))
        
        self.present(alertController, animated: true, completion: nil)
        
        TIMER.invalidate()
    }
    
    
    
    
    
    
    //question 17 A = True
    //outlets
    @IBOutlet weak var questionSeventeenLbl: UILabel!
    @IBOutlet weak var trueQSeventeenBtn: UIButton!
    @IBOutlet weak var falseQSeventennBtn: UIButton!
    
    
    
    
    
    
    //true and false func (q17)
    @IBAction func trueQSeventeenBtnPressed(_ sender: Any) {
        questionSeventeenLbl.isHidden = true
        trueQSeventeenBtn.isHidden = true
        falseQSeventennBtn.isHidden = true
        questionEighteenLbl.isHidden = false
        trueQEighteenBtn.isHidden = false
        falseQEighteenBtn.isHidden = false
    }
    
    
    @IBAction func falseQSeventeenBtnPressed(_ sender: Any) {
        let alertController = UIAlertController(title: "Sorry", message: "Wrong Answer", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Game Over!", style: .default, handler: { (ACTION) in
            
            print("button pressed")
            
            self.performSegue(withIdentifier: "WrongSG", sender: nil)
            
        }))
        
        self.present(alertController, animated: true, completion: nil)
        
        TIMER.invalidate()
    }
    
    
    
    
    
    
    
    
    
    //question 18 A = true 
    //outlet
    @IBOutlet weak var questionEighteenLbl: UILabel!
    @IBOutlet weak var trueQEighteenBtn: UIButton!
    @IBOutlet weak var falseQEighteenBtn: UIButton!
    
    
    
    
    //true and false func (q18)
    @IBAction func trueQEighteenBtnPressed(_ sender: Any) {
        questionEighteenLbl.isHidden = true
        trueQEighteenBtn.isHidden = true
        falseQEighteenBtn.isHidden = true
        questionNineteenLbl.isHidden = false
        trueQNineteenBtn.isHidden = false
        falseQNineteenBtn.isHidden = false
    }
    
    @IBAction func falseQEighteenBtnPressed(_ sender: Any) {
        let alertController = UIAlertController(title: "Sorry", message: "Wrong Answer", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Game Over!", style: .default, handler: { (ACTION) in
            
            print("button pressed")
            
            self.performSegue(withIdentifier: "WrongSG", sender: nil)
            
        }))
        
        self.present(alertController, animated: true, completion: nil)
        
        TIMER.invalidate()
    }
    
    
    
    
    
    
    
    
    
    //question 19 A = false
    //outlet
    @IBOutlet weak var questionNineteenLbl: UILabel!
    @IBOutlet weak var trueQNineteenBtn: UIButton!
    @IBOutlet weak var falseQNineteenBtn: UIButton!
    
    
    
    
    
    
    //true and func/ q19
    @IBAction func trueQNineteenBtnPressed(_ sender: Any) {
        let alertController = UIAlertController(title: "Sorry", message: "Wrong Answer", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Game Over!", style: .default, handler: { (ACTION) in
            
            print("button pressed")
            
            self.performSegue(withIdentifier: "WrongSG", sender: nil)
            
        }))
        
        self.present(alertController, animated: true, completion: nil)
        
        TIMER.invalidate()
    }
    
    
    @IBAction func falseQNineteenBtnPressed(_ sender: Any) {
        questionNineteenLbl.isHidden = true
        trueQNineteenBtn.isHidden = true
        falseQNineteenBtn.isHidden = true
        questionTwentyLbl.isHidden = false
        trueQTwentyBtn.isHidden = false
        falseQTwentyBtn.isHidden = false
    }
    
    
    
    
    
    
    
    
    //question 20 a = false 
    //outlet
    @IBOutlet weak var questionTwentyLbl: UILabel!
    @IBOutlet weak var trueQTwentyBtn: UIButton!
    @IBOutlet weak var falseQTwentyBtn: UIButton!
    
    
    
    
    //true and false func/ q20
    @IBAction func trueQTwentyBtnPressed(_ sender: Any) {
        let alertController = UIAlertController(title: "Sorry", message: "Wrong Answer", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Game Over!", style: .default, handler: { (ACTION) in
            
            print("button pressed")
            
            self.performSegue(withIdentifier: "WrongSG", sender: nil)
            
        }))
        
        self.present(alertController, animated: true, completion: nil)
        
        TIMER.invalidate()
    }
    
    
    @IBAction func falseQTwentyBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "YouWin", sender: nil)
        
    }
    
    
    
    
    
    
    
    //timer seque
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
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
