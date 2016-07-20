//
//  DiceViewController.swift
//  DiceRoller
//
//  Created by Rohan Roy on 21/07/16.
//  Copyright © 2016 Rohan Roy. All rights reserved.
//

import UIKit

class DiceViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var firstValue: Int?
    var secondValue: Int?
    
    @IBOutlet weak var firstDie: UIImageView!
    @IBOutlet weak var secondDie: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        if let firstValue = self.firstValue{
            self.firstDie.image = UIImage(named: "d\(firstValue)")
        }
        else{
            self.firstDie.image = nil
        }
        
        if let secondValue = self.secondValue{
            self.secondDie.image = UIImage(named: "d\(secondValue)")
        }
        else{
            self.secondDie.image = nil
        }
        self.firstDie.alpha = 0
        self.secondDie.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.3){
            self.firstDie.alpha = 1
            self.secondDie.alpha = 1
        }
    }
    @IBAction func dismiss(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
