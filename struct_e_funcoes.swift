//
//  main.swift
//  Aula_Funcoes_E_Structs
//
//  Created by Wellington Barbosa de Almeida on 06/06/18.
//  Copyright © 2018 Wellington Barbosa de Almeida. All rights reserved.
//

import Foundation

struct Point {
    var x:Double
    var y:Double
    
    func distancia(de outro:Point) -> Double {
        let diffX = self.x - outro.x
        let diffY = self.y - outro.y
        let sumSqs = diffX*diffX + diffY*diffY
        return sqrt(sumSqs)
    }
    func igual(a outro:Point) -> Bool {
        return self.x == outro.x && self.y == outro.y
    }
}

/*
 
 Defina um struct Retangulo que guarda os dois lados de um retângulo e um Ponto correspondente ao seu centro. Essa struct deve incluir funções para:
 - calcular a área do retângulo;
 - verificar se dois retângulos são iguais; e
 - calcular a distância entre tal retângulo e um ponto qualquer.
 
 */

struct Retangulo {
    var base:Double
    var altura:Double
    var centro:Point
    
    func area() -> Double {
        return self.altura * self.base
    }
    
    func contem(o ponto:Point) -> Bool {
        let distancia = self.centro.distancia(de: ponto)
        return (distancia <= (self.base/2)) && (distancia <= (self.altura/2))
    }
    
    func igual(a outro:Retangulo) -> Bool {
        return (self.altura == outro.altura) && (self.base == outro.base)
    }
    
    func distancia(a ponto:Point) -> Double {
        if self.contem(o: ponto) {
            return 0.0
        }
        else {
            return self.centro.distancia(de: ponto)
        }
    }
}

/*
 
 Defina um struct Pokemon que guarda algumas informações relevantes de um pokemon:
 - nome
 - tipo (um ou dois)
 - pontos de HP totais
 - pontos de HP atuais
 - uma lista de ataques, que incluem um nome e um dano básico
 Um pokemon deve ser capaz de verificar se outro pokemon tem um tipo em comum com ele e deve ser capaz de atacar outro pokemon com um determinado ataque, infligindo dano no pokemon atacado.
 
 */

struct Ataque {
    var nome:String
    var dano:Int
    var tipo:String
}

struct Pokemon {
    var nome:String
    var tipo:[String]
    var hp:Int
    var ataques:[Ataque]
    var hpAtual:Int
    
    init(nome:String, tipo:String, hp:Int) {
        self.nome = nome
        self.tipo = []
        self.tipo.append(tipo)
        self.hp = hp
        self.hpAtual = hp
        
        let ataquePadrao = Ataque(nome:"Investida", dano:10, tipo:"Normal")
        self.ataques = []
        self.ataques.append(ataquePadrao)
    }
    
    mutating func addAtaques(novos:[Ataque]) {
        for novo in novos {
            self.ataques.append(novo)
        }
    }

    mutating func atacado(por oponente:Pokemon) -> String {
        var turnMessage = ""
        let nAtaques = oponente.ataques.count
        let ataque = oponente.ataques[Int(arc4random_uniform(UInt32(nAtaques)))]
        
        self.hpAtual -= ataque.dano
        turnMessage = "\(self.nome) recebeu um/uma \(ataque.nome) e sofreu \(ataque.dano) hitpoints"
        
        return turnMessage
    }
}

func resultado(pokemon1:Pokemon, pokemon2:Pokemon) -> String {
    if(pokemon1.hpAtual <= 0) {
        return "\(pokemon2.nome) venceu"
    }
    else {
        return "\(pokemon1.nome) venceu"
    }
}

var chikorita = Pokemon(nome:"Chikorita", tipo:"Planta", hp:110)
var cyndaquil = Pokemon(nome:"Cyndaquil", tipo:"Fogo", hp:90)

chikorita.addAtaques(novos: [Ataque(nome:"Folha navalha", dano:30, tipo:"Planta"), Ataque(nome:"Chicote de cipo", dano:20, tipo:"Planta")])

cyndaquil.addAtaques(novos: [Ataque(nome:"Lança chamas", dano:50, tipo:"Fogo"), Ataque(nome:"Aranhão", dano:10, tipo:"Normal"), Ataque(nome:"Giro de fogo", dano:30, tipo:"Fogo")])

// Batalha
while((chikorita.hpAtual > 0) && (cyndaquil.hpAtual > 0)) {
    print(chikorita.atacado(por: cyndaquil))
    print(cyndaquil.atacado(por: chikorita))
    print()
}

print(resultado(pokemon1:chikorita, pokemon2:cyndaquil))










