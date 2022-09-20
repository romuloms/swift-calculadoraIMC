//
//  ViewController.swift
//  CalculadoraIMC
//
//  Created by Student on 13/09/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

//let numberFormatter = NumberFormatter()

class ViewController: UIViewController {
    
    @IBOutlet weak var nomePesoText: UITextField!
    
    @IBOutlet weak var nomeAlturaText: UITextField!
    
    @IBOutlet weak var resultadoLabel: UILabel!
    
    @IBAction func nomeCalculoButton(_ sender: Any) {
        
        let peso = Double(nomePesoText.text!) ?? 0
        let altura = Double(nomeAlturaText.text!) ?? 0
        
        if altura == 0 || peso == 0 {
            return
        } else {
            let calculo = peso/(altura*altura)
            let calculoFormatado = String(format: "Resultado: %.2f", calculo)
            
            resultadoLabel.text = String(calculoFormatado)
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

