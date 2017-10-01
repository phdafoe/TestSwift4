//
//  ViewController.swift
//  TestSwift4
//
//  Created by Andres on 30/9/17.
//  Copyright © 2017 icologic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - VARIABLES LOCALES
    
    
    //MARK: - IBOUTLETS
    
    @IBOutlet weak var myTextFieldUno: UITextField!
    @IBOutlet weak var myTextFieldDos: UITextField!
    @IBOutlet weak var myTextFieldTres: UITextField!
    
    @IBOutlet weak var myTextFieldCuatro: UITextField!
    
    
    
    @IBOutlet weak var topSpacingSuperViewTFDos: NSLayoutConstraint!
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    //MARK: - IBACTIONS
    
    @IBAction func hideOrShowACTION(_ sender: Any) {
        
        
        myTextFieldDos.isHidden = false
        myTextFieldTres.isHidden = false
        myTextFieldCuatro.isHidden = false
        
        topSpacingSuperViewTFDos.isActive = true
        
        mySwitch.isOn = true
        
    }
    
    
    @IBAction func mySwitchACTION(_ sender: UISwitch) {
        
        if !mySwitch.isOn{
            
            topSpacingSuperViewTFDos.isActive = false
            
            myTextFieldDos.isHidden = true
            myTextFieldTres.isHidden = true
            myTextFieldCuatro.isHidden = true
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTextFieldDos.isHidden = true
        myTextFieldTres.isHidden = true
        myTextFieldCuatro.isHidden = true
        
        
       
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

