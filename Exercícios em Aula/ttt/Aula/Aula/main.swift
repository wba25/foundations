//
//  main.swift
//  Aula
//
//  Created by Wellington Barbosa de Almeida on 14/05/18.
//  Copyright © 2018 Wellington Barbosa de Almeida. All rights reserved.
//

import Foundation

// Atividade 1
/*
var pontos = 0

let quiz = ["Animal que se alimenta de tudo": "Onívoro",
            "Extensão de terra cercada por água": "Peninsula",
            "Subfilo dos artrópodes que os escorpiões pertencem": "Aracnídeos",
            "O que significa \"Jerimun\"? \na. Coco\nb. Inhame\nc. Abóbora\nd. Cajá": "c",
            "Qual casse do D&D é famosa pela força bruta e pouca inteligencia?\na. Mago\nb. Ranger\nc. Ladino\nd. Bárbaro": "d"]

var palpite:String? = "";

for (pergunta, resposta) in quiz {
    print(pergunta)
    palpite = readLine()
    if (resposta == palpite) {
        pontos+=1
    }
    else {
        print("Errooou!")
        pontos-=1
    }
}

if pontos >= 5 {
    print("Parabéns!")
}
print("Seus pontos: \(pontos)")
*/

// # atividade 2
/*
let input = readLine()!

if (input.count != 1) {
    print("Erro!")
}
else {
    let asciiValue = UnicodeScalar(input)!.value
    if (asciiValue >= 48) && (asciiValue <= 57) {
        print("É númerico")
    }
    if ( (asciiValue >= 65) && (asciiValue <= 90) ) || ( (asciiValue >= 97) && (asciiValue <= 122) ) {
        print("É alfabetico")
    }
    else {
        print("Nenhum dos outros tipos")
    }
}
*/

// # atividade 3
/*
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
*/
