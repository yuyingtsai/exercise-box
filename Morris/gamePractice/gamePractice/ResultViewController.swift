//
//  ResultViewController.swift
//  gamePractice
//
//  Created by Morris on 2018/5/15.
//  Copyright © 2018年 Morris. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var scoreForResult:Int = 0
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var restartOutlet: UIButton!
    
    @IBAction func restartButton(_ sender: UIButton) {
        scoreForResult = 0
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? Quiz1ViewController{
            vc.scoreInQuiz1 = 0
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "\(scoreForResult) 題！"
        restartOutlet.layer.cornerRadius = 30
        
    }
   
}
