//
//  main.swift
//  ExerciciosAulaCondicional
//
//  Created by Wellington Barbosa de Almeida on 14/05/18.
//  Copyright © 2018 Wellington Barbosa de Almeida. All rights reserved.
//

import Foundation

// # atividade 1

/*
 
 Construa um programa que lê um string contendo apenas um caractere e informa se ele é alfabético,
 numérico ou nenhum dos dois. Se o string tiver mais que um caractere, seu programa deve imprimir
 uma mensagem de erro.
 
*/

let input = readLine()!
 
if (input.count != 1) {
    print("Erro!")
}
else {
     let asciiValue = UnicodeScalar(input)!.value
     if (asciiValue >= 48) && (asciiValue <= 57) {
         print("É númerico")
     }
     else if ( (asciiValue >= 65) && (asciiValue <= 90) ) || ( (asciiValue >= 97) && (asciiValue <= 122) ) {
         print("É alfabético")
     }
     else {
         print("Nenhum dos outros tipos")
     }
}


// # atividade 2
/*

 Construa um programa que lê três números a partir do teclado e ao final diz quantos desses são pares.
 
*/

// a seguir, o optional foi aberto na força bruta, não é a forma adequada
// o código foi implementado desta maneira com fins experimentais

let n1 = readLine()!
let n2 = readLine()!
let n3 = readLine()!

var qtdPares = 0

if(Int(n1)!%2 == 0) {
    qtdPares += 1
}
 
if(Int(n2)!%2 == 0) {
    qtdPares += 1
}
 
if(Int(n3)!%2 == 0) {
    qtdPares += 1
}

print (qtdPares)
 


// # atividade 3
/*
 
 Escreva um programa que calcule o preço a pagar pelo fornecimento de energia elétrica.
 
*/

let kWhConsumidos = readLine()
let tipoInstalacao = readLine()
var consumo = 0.0

if let strOptKWh = kWhConsumidos {
    if let optKWh = Double(strOptKWh) {
        if let optTipo = tipoInstalacao {
            if optTipo == "R" {
                if optKWh <= 500 {
                    consumo = optKWh * 0.4
                }
                else if optKWh > 500 {
                    consumo = optKWh * 0.65
                }
            }
        }
    }
}











