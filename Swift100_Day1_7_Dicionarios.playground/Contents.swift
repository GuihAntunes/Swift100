//: Dicionários

var rodizio = [
    "SEG" : "1 e 2",
    "TER" : "3 e 4",
    "QUA" : "5 e 6",
    "QUI" : "7 e 8",
    "SEX" : "9 e 0"
]
// Acesso aos valores
print("Na quinta é rodízio das placas: \(rodizio["QUI"])")

//Obs.: Nunca pode repetir a chave
// Tipagem explícita

var dicionarioUm:Dictionary<String, Int>
var dicionarioDois:[String:Int]

// Alterando ou adicionando
rodizio["DOM"] = "Todas"
print(rodizio)

// Remover
rodizio["DOM"] = nil // 'nil' significa 'nulo'
print(rodizio)

// Contagem, chaves e valores
rodizio.count
Array(rodizio.keys)
Array(rodizio.values)

for (chave, valor) in rodizio {
    print("Para \(chave), placas \(valor)")
}

// Quick Fix
// Faça um dicionário com filmes, em que a chave seja o nome do filme
// e o valor seja uma tupla contendo diretor, ano de lançamento e avaliação

typealias Description = (diretor:String, anoLançamento:Int, avaliação:Int)

var descFilme1 = ("David Ayer", 2016, 10)
var descFilme2 = ("David Ayer", 2016, 10)
var descFilme3 = ("David Ayer", 2016, 10)
var descFilme4 = ("David Ayer", 2016, 10)

// #######
//
//: 1. Variáveis
//:
//: 1.1 - Nome Completo (String)
//: 1.2 - Idade (Int)
//: 1.3 - Cidade, com cidade e estado (Tupla)
//: 1.4 - Endereço, com Rua, Número, Bairro e Cidade (Tupla)
//: 1.5 - Pessoa, com nome, idade e endereço (Tupla)
//
//: 2. Constante
//:
//: 2.1 - Dia do descobrimento do Brasil (UInt8)
//: 2.2 - Mês do descobrimento do Brasil (String)
//: 2.3 - Ano do descobrimento do Brasil (UInt16)
//: 2.4 - Valor de PI (Float)
//: 2.5 - Data de nascimento (tupla: Int, String, Int)
//
//: 3. Vetores
//:
//:  3.1 - Continentes
//:  3.2 - Regiões do Brasil
//:  3.3 - Sobrinhos do Patinhas
//:  3.4 - Números primos até 10
//:  3.5 - Notas de escola de samba
//:  3.6 - Temperatura nos dias da prox. semana
//:           [(max:Int, min:Int, tempo:String)]
//
//: 4. Dicionários
//:
//: 4.1 - Região do Brasil (siglas-nome)
//: 4.2 - Animal (nome, idade, espécie)
//: 4.3 - Nome dos números até 5 (1:"UM")

// pastebin.com/Ap3CnnTr
