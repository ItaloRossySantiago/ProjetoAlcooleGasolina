//
//  ViewController.swift
//  ProjetoAlcooleGasolina
//
//  Created by Italo on 04/09/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var precoDaGasolina: UITextField!
    @IBOutlet weak var precoDoAlcool: UITextField!
    
    @IBOutlet weak var resultadoTf: UILabel!
    
    @IBAction func calcular(_ sender: Any) {
        if let precoDaGasolina = precoDaGasolina.text {
            if let precoDoAlcool = precoDoAlcool.text {
              let validarCampos = validarCampos(precoAlcool: precoDoAlcool, precoGasolina: precoDaGasolina)
                if validarCampos {
                    calcularMelhorPreco(precoAlcool: precoDoAlcool,precoGasolina: precoDaGasolina)
                }
                
            }
        }
        
        
        
    }
    
    func calcularMelhorPreco(precoAlcool:String, precoGasolina:String) {
        if let Alcool = Double(precoAlcool) {
            if let Gasolina = Double(precoGasolina) {
                let calculo =  Alcool / Gasolina
                
                if calculo >= 0.7 {
                    self.resultadoTf.text = "É melhor utilizar a gasolina"
                } else {
                    self.resultadoTf.text = "É melhor utilizar o alcool"
                }
            }
        }
        
    }
    
    func validarCampos(precoAlcool:String, precoGasolina:String) -> Bool {
        
        if (precoAlcool.isEmpty) && (precoGasolina.isEmpty) {
            return false
        } else {
            return true
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

