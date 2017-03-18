//
//  ViewController.swift
//  OneTRAK
//
//  Created by Денис on 18.03.17.
//  Copyright © 2017 Tceh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var labelCounter: UILabel!
    @IBOutlet weak var fieldInput: CustomUITextField!
    
    var total = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    // считаем
    @IBAction func buttonProcess(_ sender: UIButton) {
        
        if let number = Int((fieldInput.text)!) {
            var i = 0
            var sum = 0
            //let number = Int(fieldInput.text!)
            
            while i != Int(fieldInput.text!)! {
                i += 1
                sum += number
                labelResult.text = String(sum)
            }
            total += 1
            labelCounter.text = String(total)
        } else
        {
            let alert = UIAlertController(title: "Внимание", message: "Введите значение", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ОК", style: .default))
            self.present(alert, animated: true)
        }
    }
   
    // сброс
    @IBAction func buttonReset(_ sender: UIButton) {
        labelCounter.text = "#"
        total = 0
        labelResult.text = "результат"
    
    }
    
}



