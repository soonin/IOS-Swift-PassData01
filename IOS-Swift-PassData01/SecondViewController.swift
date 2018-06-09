//
//  SecondViewController.swift
//  IOS-Swift-PassData01
//
//  Created by Pooya on 2018-06-09.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var pageTitle: UILabel!
    @IBOutlet weak var passIntView: UITextField!
    @IBOutlet weak var passStringView: UITextField!
    @IBOutlet weak var passArrayView: UITextField!
    
    var intPassVal : Int = 0
    var stringPassVal : String = ""
    var arrayPassVal : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(intPassVal)
        print(stringPassVal)
        print(arrayPassVal.description)
        self.passIntView!.text = String(intPassVal)
        self.passStringView!.text = stringPassVal
        self.passArrayView!.text = arrayPassVal.joined(separator: " ")
    }

    @IBAction func goHomePage(_ sender: UIBarButtonItem) {
        let myVC = storyboard?.instantiateViewController(withIdentifier: "Home") as! ViewController
        myVC.intPassVal = Int(self.passIntView!.text!)!
        myVC.stringPassVal = self.passStringView!.text!
        myVC.arrayPassVal = self.passArrayView!.text!.split(regex: " ")
        
        self.present(myVC, animated: true, completion: nil)
    }
    
    
    
    @IBAction func goThirdPage(_ sender: UIBarButtonItem) {
        let myVC3 = storyboard?.instantiateViewController(withIdentifier: "Third") as! ThirdViewController
        myVC3.intPassVal = Int(self.passIntView!.text!)!
        myVC3.stringPassVal = self.passStringView!.text!
        myVC3.arrayPassVal = self.passArrayView!.text!.split(regex: " ")
        
        self.present(myVC3, animated: true, completion: nil)
    }
    

}
