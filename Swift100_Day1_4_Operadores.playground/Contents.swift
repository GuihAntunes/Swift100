//: Operadores

// Atribuição: '='
var valor = 300
var código = 5

// Aritiméticos: '+','-', '/', '*'
let soma = 4 + 5
let subtração = 8 - 2
let multiplicação = 100 * 0.3
let divisão = 200 / 4
let resto = 7%4
let éPar = 55%2 == 0

// Operador composto: '+=','-=', '/=', '*='
var numero = 5
numero += 3 // mesmo que: numero = numero + 3
numero -= 2
numero *= 2
numero /= 5
numero %= 2

var texto = "Lorem ipsum"
texto += " dolor " + "sit \(numero)"

// numero++ não funciona no Swift 3
// --numero também não

// Operador de comparação
let (a,b)     = (1,3)
var igual     = a == b
var diferente = a != b

!igual // NOT lógico

// maior ou menor
a < b
a > b

// maior igual, menor igual
a >= b
a <= b

// operador ternário 😈

let n = 6
var parOuImpar = "não sei"
// ~regrinha~
// 'condição' ? 'retorno verdadeiro' : 'falso'
parOuImpar = (n%2 == 0) ? "par" : "impar"

// Desafio

// Quantos porcento seu nome é maior que o seu sobrenome
// por exemplo ex: gustavo é 75% maior que line
var nome = "Guilherme"
var sobrenome = "Antunes"
var resultado:Int

print(nome.characters.count)
print(sobrenome.characters.count)
resultado = (sobrenome.characters.count*100)/nome.characters.count
resultado = 100 - resultado
if(resultado < 0) {
    resultado = (nome.characters.count*100)/sobrenome.characters.count
    resultado = 100 - resultado
    print("\(sobrenome) é \(resultado)% maior que \(nome)")
}else{
    if(resultado == 0)
    {
        print("\(nome) tem a mesma quantidade de letras que \(sobrenome)")
    }else{
print("\(nome) é \(resultado)% maior que \(sobrenome)")
    }
}


