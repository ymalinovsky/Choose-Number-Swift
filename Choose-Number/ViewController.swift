//
//  ViewController.swift
//  Choose-Number
//
//  Created by Yan Malinovsky on 25.10.16.
//  Copyright © 2016 Yan Malinovsky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelField: UILabel!
    
    @IBOutlet var textField: UITextField!
    
    @IBOutlet var corectNumberText: UITextView!
    
    @IBOutlet var correctQty: UILabel!
    
    @IBOutlet var wrongQty: UILabel!
    
    @IBAction func checkButton(_ sender: UIButton) {
        corectNumberText.text = ""
        
        if textField.text != "" {
            checkTextField(random: String(arc4random_uniform(5) + 1))
            clearTextField()
        } else {
            labelField.text = "Guess the number"
            labelField.textColor = UIColor.black
            corectNumberText.text = "Field is empty. Please enter number from the range."
            textField.resignFirstResponder()
        }
    }

    func checkTextField(random: String ) {
        if random == textField.text {
            labelField.text = "Correct Answer"
            labelField.textColor = UIColor.green
            
            corectNumberText.text = "Congratulation!"
            
            correctQty.text = String(Int(correctQty.text!)! + 1)
            
        } else {
            labelField.text = "Wrong Answer, try again."
            labelField.textColor = UIColor.red
            
            corectNumberText.text = "The correct number was \(random)"
            
            wrongQty.text = String(Int(wrongQty.text!)! + 1)
        }
    }
    
    func clearTextField() {
        textField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

