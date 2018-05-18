//
//  main.swift
//  ExerciciosLoop
//
//  Created by Wellington Barbosa de Almeida on 18/05/18.
//  Copyright © 2018 Wellington Barbosa de Almeida. All rights reserved.
//

import Foundation


/*
 
 Faça um programa que lê um número N maior que 1 a partir do teclado e calcula a soma de todos os números entre 1 e N.
 
 
var somatorio = 0
let n = readLine()
if let strN = n {
    if let number = Int(strN) {
        if(number > 1) {
            for i in 1...number {
                somatorio += i
            }
            print(somatorio)
        }
    }
}
*/

/*
 
 Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz"
 


for i in 1...100 {
    let c1 = i % 3 == 0
    let c2 = i % 5 == 0
    var output = ""
    if c1 {
        output += "Fizz"
    }
    if c2 {
        output += "Buzz"
    }
    if (!c1 && !c2) {
        output = String(i)
    }
    print(output)
}
*/

/*
 
 Construa um programa que lê um número X a partir do teclado e verifica se ele é primo. Seu programa deve informar ao usuário se X é primo ou não.
 


var isPrimo = true
let optionalStrX = readLine()

if let strX = optionalStrX {
    if let x = Int(strX) {
        var i = 2
        
        while (i <= (x-1)) && isPrimo {
            if (x % i == 0) {
                isPrimo = false
            }
            i += 1
        }
        
        if(isPrimo) {
            print("\(x) é primo")
        }
        else {
            print("\(x) não é primo")
        }
    }
}

*/

/*
 
 Crie um programa que lê um número N do teclado e calcula o seu fatorial.

// Recursivamente

func fat(n: Int) -> Int {
    if n < 2 {
        return 1
    }
    return n * fat(n: n - 1)
}

print(fat(n: 5))
 
// Iterativamente
 
let optinalStrN = readLine()

if let strN = optinalStrN {
    if var n = Int(strN) {
        var fatorial = 1
        while (n > 0) {
            fatorial *= n
            n = n - 1
        }
        
        print(fatorial)
    }
}

*/

/*
 
 Faça um programa que, dado um número lido a partir do teclado, calcula a soma de seus dígitos (independentemente do número de dígitos)
 
 

let optionalStrN = readLine()

if let strN = optionalStrN {
    
    var sum = 0
    for caractere in strN {
        if let n = Int(String(caractere)) {
            sum += n
        }
    }
    print(sum)
}

*/

/*
 
 Construa um programa que fica pedindo que o usuário digite números e os soma até que o usuário digite 0. Neste momento o programa deve imprimir o valor total da soma.

var n = -1
var sum = 0

while n != 0 {
    let optionalStrN = readLine()
    if let strN = optionalStrN{
        if let intN = Int(strN) {
            n = intN
            sum += n
        }
    }
}
print("Soma = \(sum)")

*/

/*
 
 Faça com que seu programa só aceite números a ser adivinhados entre 0 e 100. Enquanto os números não estiverem nesse intervalo, seu jogo deve continuar repetidamente pedindo que o número a ser adivinhado seja fornecido.
 

var chances = 10
var adivinhou = false

var intNumberToGuess = -1
var intNumberToCheck = -1

print("Jogador 1:")
while (intNumberToGuess > 100) || (intNumberToGuess < 0) {
    print("Informe um número entre 0 e 100")
    let numberToGuess = readLine()
    if let strNumberToGuess = numberToGuess {
        if let intNumberToGuessCast = Int(strNumberToGuess) {
            intNumberToGuess = intNumberToGuessCast
        }
    }
}

print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
print("Jogador 2:")
while((chances != 0) && (!adivinhou)) {
    print("Você tem \(chances) tentativas")
    
    intNumberToCheck = -1
    while (intNumberToCheck > 100) || (intNumberToCheck < 0) {
        print("Informe um número entre 0 e 100")
        let numberToCheck = readLine()
        if let strNumberToCheck = numberToCheck {
            if let intNumberToCheckCast = Int(strNumberToCheck) {
                intNumberToCheck = intNumberToCheckCast
            }
        }
    }
    
    if(intNumberToGuess > intNumberToCheck) {
        print("O número do jogador 1 é maior")
    }
    else if(intNumberToGuess < intNumberToCheck) {
        print("O número do jogador 1 é menor")
    }
    else {
        print("Adivinhou!")
        adivinhou = true
    }
    chances -= 1
}

*/

/*
 
 Construa um programa que lê um número inteiro N a partir do teclado e calcula a raiz cúbica inteira desse número, se houver. Caso não haja, ele deve informar isso ao usuário.
 
// x(i+1) = 1/3 * ( 2 * x(i) + (n/(x(i)*x(i))) ) // método de newton

func metodoNewton (valor: Int, valor_inicial_iteracao: Double, numero_iteracoes: Int) -> Double {
    var i = 0
    
    var xi = valor_inicial_iteracao
    var xNext = 0.0
    
    while(i <= numero_iteracoes) {
        xNext = 1/3 * ( 2 * xi + (Double(valor) / (xi * xi)) )
        xi = xNext
        i += 1
    }
    
    return xNext
}

let optionalStrN = readLine()

if let n = Int(optionalStrN!) {
    let raizCubica = metodoNewton(valor: n, valor_inicial_iteracao: 1.0, numero_iteracoes: 100)
    
    // check se um número é um cubo perfeito
    if(floor(raizCubica) == raizCubica) {
        print("Raiz cúbica de \(n) é \(raizCubica)")
    }
    else {
        print("O número informado não possue raiz cúbica perfeita")
    }
}

 */

/*
 
 A sequência de Fibonacci é dada por     fib(0) = 1    fib(1) = 1    fib(n) = fib(n-1) + fib(n-2)  Faça um programa que, dado um número n, calcula o fib(n).
 
 

func fib(n: Int) -> Int {
    if n < 2 {
        return 1
    }
    else {
        return fib(n: n-1) + fib(n: n-2)
    }
}

let optionalStrN = readLine()

if let n = Int(optionalStrN!) {
    print("O Fibonacci de \(n) é \(fib(n: n))")
}
*/

func isPrimo(number: Int) -> Bool {
    var isPrimo = true
    
    var i = 2
    while (i <= (number-1)) && isPrimo {
        if (number % i == 0) {
            isPrimo = false
        }
        i += 1
    }
    
    return isPrimo
}

/*
 
 Construa um programa que lê um número N a partir do teclado e calcula todos os números primos entre 2 e N

let optionalStrN = readLine()
if let n = Int(optionalStrN!) {
    for i in 2...n {
        if(isPrimo(number: i)) {
            print(i)
        }
    }
}

*/

func getDivisores(n: Int) -> [Int] {
    var divisores:[Int] = []
    for i in 2...(n-1) {
        if n % i == 0 {
            divisores.append(i)
        }
    }
    return divisores
}

/*
 
 Faça seu programa imprimir todos os divisores de todos os números de 1 a um N lido a partir do teclado. Você não precisa levar em conta nem o 1 nem o próprio número como divisores. Apresente essa informação para o usuário após dizer para ele que o número não é primo.

let optionalStrN = readLine()
if let n = Int(optionalStrN!) {
    for i in 2...n {
        if(!isPrimo(number: i)) {
            print(getDivisores(n: i))
        }
        else {
            print("\(i) é primo")
        }
    }
}

*/

/*
 
 Dado um número N, fornecido pelo usuário, calcule todas as médias aritméticas dos números entre 1 e j, para todo número j tal que j <= N.
 
 */










