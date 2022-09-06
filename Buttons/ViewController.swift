//
//  ViewController.swift
//  Buttons
//
//  Created by Vinicius on 05/05/22.
//

import UIKit

class ViewController: UIViewController {

    var calculadora = Calculadora()
    
    @IBOutlet var labelResultado: UILabel?
    
    @IBAction func porcentagem() {
        calculadora.porcentagem()
        labelResultado?.text = "\(calculadora.resultado)"
    }
    
    @IBAction func positivoOuNegativo() {
        calculadora.positivoOuNegativo()
        labelResultado?.text = "\(calculadora.resultado)"
    }
    
    @IBAction func reiniciarUltimoNumero() {
        calculadora.reiniciarUltimoNumero()
        labelResultado?.text = "\(calculadora.resultado)"
    }
    
    @IBAction func selectNumber(botao: UIButton) {
        calculadora.selecionarNumero(numeroSelecionado: Double(botao.tag))
        labelResultado?.text = "\(calculadora.resultado)"
    }

    @IBAction func selectOperator(botao: UIButton) {
        calculadora.operador = botao.tag
    }
    
    @IBAction func showResult() {
        calculadora.definirResultado()
        labelResultado?.text = "\(calculadora.resultado)"
    }
}

