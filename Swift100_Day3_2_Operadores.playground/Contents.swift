//: Operadores Customizados

// No swift podemos criar novos operadores!
// Exmeplo tradicional: operador '+'
let a:Int = 10
let b:Int = 3
print(a+b) // aqui '+' é o que chamamos de operador

// PREFIX *conteúdo 
prefix operator ✂︎ {}

prefix func ✂︎ (texto:String) -> String {
    return String(texto.characters.filter{
        return ["a", "e", "i", "o", "u"].contains(String($0))
        })
}

let vogais = ✂︎"Hello!"
import Darwin
// Quick fix: Criar um operador de raiz quadrada √
// Ou seja, print(√9) -> 3
// Dica: import Darwin, tem função sqtr()
prefix operator √ {}

prefix func √ (v1:Double) -> Double {
    return sqrt(v1)
}

print(√9)
print(√16)

// POSTFIX conteúdo*

// Quick fix: crie um operador de %
// print(9%) // mostrar 0.09
// dica: postfix vs. prefix, tipagem

postfix operator % {}

postfix func % (valor:Double) -> Double {
    return valor / 100
}

print(9%)
print(57%)
print(1500 * 10%)


// INFIX a*b

// symb ♒︎ : aquarius

infix operator ♒︎ {}

func ♒︎(esquerda:Int, direita:Int) -> [Int] {
    let inicio = min(esquerda, direita)
    let fim = max(esquerda, direita)
    
    var resposta:[Int] = []
    for i in inicio...fim {
        resposta.append(i)
    }
    return resposta
}

print(2♒︎10)
// Notar que colocando qualquer tipo diferente de Inteiro, não vai funcionar, like print("a"♒︎"b") ❌

// print("a"♒︎"c") -> ["a", "b", "c"] - Usar, código/tabela unicode - Desafio






