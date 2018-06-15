//
//  main.swift
//  Adivinhacao
//
//  Created by Wellington Barbosa de Almeida on 18/05/18.
//  Copyright © 2018 Wellington Barbosa de Almeida. All rights reserved.
//

import Foundation

var chances = 3
var adivinhou = false

print("Jogador 1:")
let numberToGuess = readLine()

if let strNumberToGuess = numberToGuess {
    if let intNumberToGuess = Int(strNumberToGuess) {
        print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
        print("Jogador 2:")
        while((chances != 0) && (!adivinhou)) {
            print("Você tem \(chances) tentativas")
            let numberToCheck = readLine()
            if let strNumberToCheck = numberToCheck {
                if let intNumberToCheck = Int(strNumberToCheck) {
                    if(intNumberToGuess < intNumberToCheck) {
                        print("É maior")
                    }
                    else if(intNumberToGuess > intNumberToCheck) {
                        print("É menor")
                    }
                    else {
                        print("Adivinhou!")
                        adivinhou = true
                    }
                    chances -= 1
                }
            }
        }
    }
}
