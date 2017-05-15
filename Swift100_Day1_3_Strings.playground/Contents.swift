//: Strings

//Imprimindo uma linha de texto
print("Escrevendo uma linha")


// Imprimindo variáveis e constantes
var nome = "João"

print(nome)

let idade = 4
print(idade)

// Misturando texto e número
// = Interpolação
print("Nome: \(nome), idade: \(idade)")
// o sinal "\" (escape) indica que o texto parou e vai buscar a variável
let primeiro = 8
print("uma conta: \(primeiro) + \("5") = \(primeiro+5)")

// '\' character de escape (para marcações)
let paragrafo = "linha 1...\nlinha2"
print(paragrafo)

let tabela = "Items:\tteste\t1novo\t2"
print(tabela)

let utf = "Caf\u{E9}"
print(utf)

let pão = "pão"
print(utf, pão, separator: "~", terminator: "")

pão.characters.count
pão.uppercaseString
pão.lowercaseString


