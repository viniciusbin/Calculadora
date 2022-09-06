//
//  Calculadora.swift
//  Buttons
//
//  Created by Vinicius on 30/05/22.
//

import Foundation

struct Calculadora {
    private (set) var resultado: Double
    private var primeiroNumero: Double
    private var segundoNumero: Double
   
    var operador: Int?
    
    
    init() {
        resultado = 0
        primeiroNumero = 0
        segundoNumero = 0
    
    }
    // Inicio das funcoes
    
    mutating func porcentagem() {
        if operador != nil {
            segundoNumero = segundoNumero / 100
            resultado = segundoNumero
        }else{
            primeiroNumero = primeiroNumero / 100
            resultado = primeiroNumero
        }
    }
    
    mutating func positivoOuNegativo () {
        if operador != nil {
            segundoNumero = segundoNumero * -1
            resultado = segundoNumero
        }else{
            primeiroNumero = primeiroNumero * -1
            resultado = primeiroNumero
        }
        
    }
    
    mutating func reiniciarUltimoNumero() {
        if operador != nil {
            segundoNumero = 0
            resultado = segundoNumero
        }else{
            primeiroNumero = 0
            resultado = primeiroNumero
        }
        
    }
    
    mutating func selecionarNumero(numeroSelecionado: Double) {
        if operador != nil {
        var numero = segundoNumero
            
            if numero < 0 {
                numero = abs(numero) * 10 + numeroSelecionado
                numero = numero * -1
                
                segundoNumero = numero
            }else {
            
            segundoNumero = (segundoNumero * 10) + numeroSelecionado
        }
            
            resultado = segundoNumero
        }else{
            var numero = primeiroNumero
            
            if numero < 0 {
                numero = abs(numero) * 10 + numeroSelecionado
                numero = numero * -1
                
                primeiroNumero = numero
            }else{
            
            primeiroNumero = (primeiroNumero * 10) + numeroSelecionado
        }
       
            resultado = primeiroNumero
        }
    }
            
    mutating func definirResultado() {
            if let operador = operador {
                
                if operador == 0 {
                    realizarDiv()
                } else if operador == 1 {
                    realizarMultip()
                
                } else if operador == 2 {
                    realizarSubtr()
            
                } else {
                    realizarSoma()
                
                }
            }
        
        
        primeiroNumero = 0
        segundoNumero = 0
        operador = nil
        
    }

    // Estes metodos realizam as operacoes basicas
    mutating func realizarSoma() {
        resultado = primeiroNumero + segundoNumero
    }

    mutating func realizarSubtr() {
        resultado = primeiroNumero - segundoNumero
    }


    mutating func realizarMultip() {
        resultado = primeiroNumero * segundoNumero
    }

    mutating func realizarDiv() {
        resultado = primeiroNumero / segundoNumero
    }

}

