//
//  SegundaViewController.swift
//  TestSwift4
//
//  Created by Andres on 1/10/17.
//  Copyright © 2017 icologic. All rights reserved.
//

import UIKit

class SegundaViewController: UIViewController {
    
    //MARK: - IBOUTLETS
    @IBOutlet weak var viewUno: UIView!
    @IBOutlet weak var viewDos: UIView!
    @IBOutlet weak var viewTres: UIView!
    @IBOutlet weak var viewCuatro: UIView!
    @IBOutlet weak var viewCinco: UIView!
    @IBOutlet weak var viewSeis: UIView!
    @IBOutlet weak var viewSiete: UIView!
    @IBOutlet weak var viewOcho: UIView!
    @IBOutlet weak var viewNueve: UIView!
    @IBOutlet weak var viewDiez: UIView!
    @IBOutlet weak var viewOnce: UIView!
    @IBOutlet weak var viewDoce: UIView!
    
    
    //MARK: - IBACTIONS
    
    
    @IBAction func showPuntualACTION(_ sender: UIButton) {
        
        muestraParametrosIniciales()
    }
    
    @IBAction func showPeriodicaACTION(_ sender: UIButton) {
        
        viewDoce.isHidden = false
        viewTres.isHidden = false
        viewCuatro.isHidden = false
        viewSeis.isHidden = false
        
    }
    
    @IBAction func hideComboUnoDosACTION(_ sender: UIButton) {
        viewCinco.isHidden = true
        viewSiete.isHidden = true
    }
    
    
    @IBAction func showComboUnoACTION(_ sender: UIButton) {
        viewCinco.isHidden = false
        viewSiete.isHidden = true
    }
    
    @IBAction func showActionComboDosACTION(_ sender: UIButton) {
        viewSiete.isHidden = false
        viewCinco.isHidden = true
    }
    
    @IBAction func showModuloUnoACTION(_ sender: UISwitch) {
        
        if sender.isOn{
            viewNueve.isHidden = false
        }else{
            viewNueve.isHidden = true
        }
    }
    
    @IBAction func showMuduloDosACTION(_ sender: UISwitch) {
        
        if sender.isOn{
            viewOnce.isHidden = false
            viewDoce.isHidden = false
        }else{
            viewOnce.isHidden = true
        }
        
    }
    
    @IBAction func showAlertViewACTION(_ sender: UISwitch) {
        
        let alertVC = UIAlertController(title: "Hola",
                                        message: "Esta es la muestra que el stack ",
                                        preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK",
                                        style: .default,
                                        handler: nil))
        present(alertVC,
                animated: true,
                completion: nil)
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        muestraParametrosIniciales()
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //MARK: - UTILS
    
    func muestraParametrosIniciales() {
        viewDos.isHidden = true
        viewTres.isHidden = true
        viewCuatro.isHidden = true
        viewCinco.isHidden = true
        viewSeis.isHidden = true
        viewSiete.isHidden = true
        
        viewNueve.isHidden = true
        
        viewDoce.isHidden = true
        
        
    }
    
    

}
