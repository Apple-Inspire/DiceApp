//
//  ViewController.swift
//  Dice
//
//  Created by yashn on 30/08/18.
//  Copyright © 2018 yashn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Dice01: UIImageView!
    @IBOutlet weak var Dice02: UIImageView!
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5" ,"dice6"]
    
    var randamDiceIndex1 : Int = 0
    var randamDiceIndex2 : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateDiceimages() {
        
        randamDiceIndex1 = Int(arc4random_uniform(6))
        randamDiceIndex2 = Int(arc4random_uniform(6))
        
        print(randamDiceIndex1,randamDiceIndex2)
        
       
    }    
    @IBAction func rollbutton(_ sender: Any) {
        
        updateDiceimages()
        
        Dice01.image = UIImage(named: diceArray[randamDiceIndex1])
        Dice02.image = UIImage(named: diceArray[randamDiceIndex2])
        
        
    }
    

}

