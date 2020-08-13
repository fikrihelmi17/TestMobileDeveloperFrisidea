//
//  ViewController.swift
//  TestMobileDeveloperFrisidea
//
//  Created by Fikri on 12/08/20.
//  Copyright © 2020 Fikri Helmi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtField: UITextField!
    @IBOutlet weak var btnPrint: UIButton!
    @IBOutlet weak var txtView: UITextView!
    
    
    @IBOutlet weak var txtFieldAnagram: UITextField!
    @IBOutlet weak var txtFieldAnagramSecond: UITextField!
    @IBOutlet weak var printAnagram: UIButton!
    @IBOutlet weak var txtViewAnagram: UITextView!
    
    
    @IBOutlet weak var nTxtField: UITextField!
    @IBOutlet weak var rTxtField: UITextField!
    @IBOutlet weak var printPermutation: UIButton!
    @IBOutlet weak var resultPTxtView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func fibonacciSequence (n: Int) -> [Int]  {
        var fibonacciArray = [Int]()

        for n in 0 ... n {
            if n == 0 {
                fibonacciArray.append(0)
            }
            else if n == 1 {
                fibonacciArray.append(1)
            }
            else {
                fibonacciArray.append (fibonacciArray[n-1] + fibonacciArray[n-2] )
            }
        }
        return fibonacciArray
    }
    
    @IBAction func printPress(_ sender: Any) {
        var str: String = ""
        let inputFibonacci = Int(txtField.text ?? "") ?? 0
        let result: [Int] = fibonacciSequence(n: inputFibonacci)
        str += "\(result)\n"
        
        if txtField.text == "" {
            txtView.text = "Enter the value"
        } else {
           txtView.text = str
        }
        
        txtField.text = ""
    }
    
    func checkAnagram(first: String, second: String) -> Bool {
        return first.lowercased().sorted() == second.lowercased().sorted()
    }
    
    @IBAction func printPressAnagram(_ sender: Any) {
        let firstWord = txtFieldAnagram.text ?? ""
        let secondWord = txtFieldAnagramSecond.text ?? ""
        let result = checkAnagram(first: firstWord, second: secondWord)
        
        if txtFieldAnagram.text == "" && txtFieldAnagramSecond.text == "" {
            txtViewAnagram.text = "Enter the value"
        } else {
            txtViewAnagram.text = String(result)
        }
        txtFieldAnagram.text = ""
        txtFieldAnagramSecond.text = ""
    }
    
    func factorial(_ n: Int) -> Int {
        if n == 0 {
            return 1
        } else {
            return n * factorial(n-1)
        }
    }
    
    @IBAction func printResult(_ sender: Any) {
        let n = Int(nTxtField.text ?? "") ?? 0
        let r = Int(rTxtField.text ?? "") ?? 0
        let calc = factorial(n)/factorial(n-r)
        
        if nTxtField.text == "" && rTxtField.text == "" {
            resultPTxtView.text = "Enter the number"
        } else {
            resultPTxtView.text = String(calc)
        }
        
        nTxtField.text = ""
        rTxtField.text = ""
    }
}

