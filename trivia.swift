//
//  main.swift
//  Aula
//
//  Created by Wellington Barbosa de Almeida on 14/05/18.
//  Copyright © 2018 Wellington Barbosa de Almeida. All rights reserved.
//
import Foundation

// Atividade 1

var pontos = 0
let quiz = ["Animal que se alimenta de tudo": "onívoro",
            "Extensão de terra cercada por água": "peninsula",
            "Subfilo dos artrópodes que os escorpiões pertencem": "aracnídeos",
            "O que significa \"Jerimun\"? \na. Coco\nb. Inhame\nc. Abóbora\nd. Cajá": "c",
            "Qual casse do D&D é famosa pela força bruta e pouca inteligencia?\na. Mago\nb. Ranger\nc. Ladino\nd. Bárbaro": "d"]

for (pergunta, resposta) in quiz {
    print(pergunta)
    let palpite = readLine()
    if var optPalpite = palpite {
        optPalpite = optPalpite.lowercased();
        if(resposta == optPalpite) {
            pontos+=1
        }
        else {
            print("Errooou!")
            pontos-=1
        }
    }
}

if pontos >= 5 {
    print("Parabéns!")
}
print("Seus pontos: \(pontos)")
