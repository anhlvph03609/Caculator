//
//  ViewController.swift
//  Caculator
//
//  Created by Anh Lê Việt on 9/30/16.
//  Copyright © 2016 Anh Lê Việt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtResult: UITextField!
    var result : String = ""
    var num2 :  String = ""
    var dau = ""
    var num :  String = ""
    var check : Bool = false
    
    @IBAction func num9(_ sender: AnyObject) {
        if(txtResult.text == "0"){
            
        txtResult.text = "9"
        }
        if (check == true) {
            txtResult.text = ""
            check = false
            txtResult.text = txtResult.text! + "9"
        }
            
        else{
            
            txtResult.text = txtResult.text! +  "9"
        }
    }
    
    @IBAction func num8(_ sender: AnyObject) {
        if(txtResult.text == "0"){
            
            txtResult.text = "8"
        }
        if (check == true) {
            txtResult.text = ""
            check = false
            txtResult.text = txtResult.text! + "8"
        }
            
        else{
            
            txtResult.text = txtResult.text! +  "8"
        }
        
    }
   
    @IBAction func num7(_ sender: AnyObject) {
        if(txtResult.text == "0"){
            
            txtResult.text = "7"
        }
        if (check == true) {
            txtResult.text = ""
            check = false
            txtResult.text = txtResult.text! + "7"
        }
            
        else{
            
            txtResult.text = txtResult.text! +  "7"
        }
        
    }
    
    
    @IBAction func num6(_ sender: AnyObject) {
        if(txtResult.text == "0"){
            
            txtResult.text = "6"
        }
        if (check == true) {
            txtResult.text = ""
            check = false
            txtResult.text = txtResult.text! + "6"
        }
            
        else{
            
            txtResult.text = txtResult.text! +  "6"
        }
    }
    
   
    @IBAction func num5(_ sender: AnyObject) {
        if(txtResult.text == "0"){
            
            txtResult.text = "5"
        }
        if (check == true) {
            txtResult.text = ""
            check = false
            txtResult.text = txtResult.text! + "5"
        }
            
  
        else{
            
            txtResult.text = txtResult.text! +  "5"
        }
    }
    
    
    
    @IBAction func num4(_ sender: AnyObject) {
        if(txtResult.text == "0"){
            
            txtResult.text = "4"
        }
        if (check == true) {
            txtResult.text = ""
            check = false
            txtResult.text = txtResult.text! + "4"
        }
 
        else{
            
            txtResult.text = txtResult.text! +  "4"
        }
    }
    
    
    @IBAction func num3(_ sender: AnyObject) {
        if(txtResult.text == "0"){
            
            txtResult.text = "3"
        }
        if (check == true) {
            txtResult.text = ""
            check = false
            txtResult.text = txtResult.text! + "3"
        }
            
        else{
            
            txtResult.text = txtResult.text! +  "3"
        }
    }
    
    
    @IBAction func num2(_ sender: AnyObject) {
        if(txtResult.text == "0"){
            
            txtResult.text = "2"
        }
        
        if (check == true) {
            txtResult.text = ""
            check = false
            txtResult.text = txtResult.text! + "2"
        }
       
        else{
            
            txtResult.text = txtResult.text! +  "2"
        }
    }
    
   
    @IBAction func num1(_ sender: AnyObject) {
        if(txtResult.text == "0"){
            
            txtResult.text = "1"
        }
        if (check == true) {
            txtResult.text = ""
            check = false
            txtResult.text = txtResult.text! + "1"
        }
            

        else{
            
            txtResult.text = txtResult.text! +  "1"
        }
       
    }
    
  
    @IBAction func num0(_ sender: AnyObject) {
        if(txtResult.text == "0"){
            
            txtResult.text = "0"
        }
        
         if (check == true) {
            txtResult.text = ""
            check = false
            txtResult.text = txtResult.text! + "0"
        }
        
        else{
            
            txtResult.text = txtResult.text! +  "0"
        }
       
    }
    
    
    @IBAction func Cong(_ sender: AnyObject) {
        dau = "+"
        num = txtResult.text!
        check = true
        result = ""
    }
    
    
    @IBAction func tru(_ sender: AnyObject) {
        dau = "-"
        num = txtResult.text!
       check = true
        result = ""
    }
    
    
    @IBAction func nhan(_ sender: AnyObject) {
        dau = "*"
        num = txtResult.text!
        check = true
        result = ""
    }
    
    
    @IBAction func chia(_ sender: AnyObject) {
        dau = "/"
        num = txtResult.text!
        check = true
        result = ""
    }
    
    
    @IBAction func clear(_ sender: AnyObject) {
        txtResult.text = ""
        result = ""
        num2 = ""
        num = ""
    }
    
    @IBAction func showResult(_ sender: AnyObject) {
        switch dau {
        case  "+" :
            var kq : Int
            let num2 :  String = txtResult.text!
            kq = Int(num)! + Int(num2)!
            txtResult.text = String(kq)
            num = ""
            dau = ""
            break
            
        case  "-" :
            var kq : Int
            let num2 :  String = txtResult.text!
            kq = Int(num)! - Int(num2)!
            
            txtResult.text = String(kq)
            dau = ""
            num = ""
            break
        case  "*" :
            var kq : Int
            let num2 :  String = txtResult.text!
            kq = Int(num)! * Int(num2)!
            
            num = ""
            dau = ""
            txtResult.text = String(kq)
           
            break
        case  "/" :
            var kq : Int
            let num2 :  String = txtResult.text!
            kq = Int(num)! / Int(num2)!
            num = ""
            dau  = ""
            txtResult.text = String(kq)
           
            break
        case "" :
            dau = "="
            txtResult.text = txtResult.text
            break
        default :
            dau = "="
             txtResult.text = txtResult.text
            break
            
        }
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

