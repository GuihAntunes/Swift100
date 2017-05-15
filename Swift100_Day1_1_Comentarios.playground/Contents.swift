//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//: Comentários

// comentário de uma linha

/* 
 
    Comntário
    com mais de uma linha
 */

print("oi") //fim de linha
/* começo da linha */ print("oi")
print(/*meio do código */"oi")

// comentários com ':'
// = Markup do Playground
// ( Editor -> show render markup )

/** 
  Função para soma de dois inteiros
  útil para:
  - demonstrar comentários
  - só
- Parameter a: primeiro valor para somar
- Parameter b: segundo valor para somar
- Returns: resultado da conta
 
*/

func soma(a:Int, b:Int) -> Int {
    return a + b
}

// Quick

/**
 Função para dizer Oi assim:
 - Print Oi
- Parameter pessoa: nome de uma pessoa
- Returns: Oi e o nome da pessoa
*/

func dizOiPara(pessoa:String) -> String {
    return "Oi" + pessoa
}