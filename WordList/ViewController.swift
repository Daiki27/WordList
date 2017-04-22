//
//  ViewController.swift
//  WordList
//
//  Created by 樋口大樹 on 2017/04/19.
//  Copyright © 2017年 樋口大樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func toQuestionView(){
        self.performSegue(withIdentifier: "toQuestionView", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startButtonTapped () {
        let saveData = UserDefaults.standard
        
        if let wordArray = saveData.array(forKey: "WORD") {
            if wordArray.count > 0 {
                self.performSegue(withIdentifier: "toQuestionView", sender:nil)
            }
        }
        
        let alert: UIAlertController = UIAlertController(
            title:"OK",
            message: "まずは「単語一覧」をタップして単語登録してください。",
            preferredStyle: .alert
    )
        
        alert.addAction(UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        ))
        
        self.present(alert, animated:true, completion: nil)
    }
}

