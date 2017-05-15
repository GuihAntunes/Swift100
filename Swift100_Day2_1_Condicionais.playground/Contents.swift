//: Condicionais

let estáChovendo = true

if estáChovendo {
    print("É bom levar ☂️") // < control + command + espaço
}

// Note que:
// parenteses na condição é opcional, mas não recomendado
// chaves são obrigatórias

let carroTemCombustível = false

if carroTemCombustível {
    print("Segue viagem!")
}else{
    print("Melhor abastecer!")
}

// Note que:
// condicionais somente funcionam com *booleanos*
// if 0 { .. // não funciona
// if nil { .. // não funciona



// Encadeamento
// IF - ELSE IF - ELSE

let farol = "Verde"

// Se farol for vermelho, pare
if farol == "Vermelho" {
    print("Pare")
// se farol for amarelo, atenção
}else if farol == "Amarelo" {
    print("Atenção")
// para qualquer outro farol, siga
}else{
    print("Siga")
}



// Mais um exemplo:

let temperatura = 23

if temperatura < 10 {
    print("Está frio")
} else if temperatura < 20 {
    print("Morno")
} else {
    print("Quente")
}



// Operadores && (e) || (ou)

let somAlto         = true
let passouDas10     = true

// IF com AND: compara duas condições verdadeiras
if somAlto && passouDas10 {
    print("Aí vem multa 💰")
}

// tabela do &&
// false && false = false
// true && false = false
// false && true = false
// true && true = true
// ou seja, quero duas coisas acontecendo ao mesmo tempo


// AND com negativa

let moroNumaCasa = false

if somAlto && passouDas10 && !moroNumaCasa {
    print("Aí vem multa 💰")
}


// IF com OR: Um das duas verdadeiras
let feriado = true
let ferias  = false

if ferias || feriado {
    print("Praia? 🏖")
}else{
    print("Trabalhar!")
}

// tabela do ||
// false && false = false
// true && false = true
// false && true = true
// true && true = true
// ou seja, quero uma das duas coisas acontecendo

// Recap
// Considere o valor abaixo:
let número = 7

// verifique se é maior que zero
if número > 0 {
    print("É maior que zero")
}else{
    print("Não é maior que zero")
}


// verifique se ele é par
if número % 2 == 0 {
    print("É par!")
}else{
    print("É ímpar!")
}

// Considerando o texto abaixo:
let texto = "ah, eu conheço esse lugar! 🗽 "

// verifique se tem mais de 3 letras
if texto.characters.count > 3 {
    print("Tem mais de 3 letras")
}else{
    print("Tem menos de 3 letras")
}


// verifique se começa com a letra 'a'
if texto.characters.first == "a" {
    print("Começa com a letra \"A\"")
}else{
    print("Whoops!")
}

// 2) Já posso aposentar ?
// tempo de contribuição mínimo: 15 anos
// idade: é preciso mais de 65 anos para homem, 60 para mulher
let éMulher = false
let tempoContribuição = 6
let idade = 28


if tempoContribuição >= 15 && (éMulher && idade >= 60) || (!éMulher && idade >= 65) {
    print("Opa, aposentei!")
}else{
    print("Trabalho meu filho!")
}

// Desafio: Passei de ano?
// Considere uma escola, onde cada aluno estuda
// em 3 matérias e tem 4 provas por ano.
// Cada avaliação tem uma nota, de 0 à 10.
//
// De 0 até 5, o aluno é reprovado na matéria.
// Tirando 6 e 7 está de recuperação na matéria.
// Mais de 7 é aprovado na matéria.
//
// Para passar precisar estar aprovado em todas
// matérias ou ter, no máximo, uma recuperação.
//
// Utilize o que aprendeu até agora para modelar:
// Aluno Júlio, com as notas:
// em Cálculo: 3,8,9,7
// em Finanças: 9,9,8,9
// em Redação: 10,10,4,6
//
// Júlio passou?

var mediaCalculo:Float = 0
var mediaFinancas:Float = 0
var mediaRedacao:Float = 0
var quantidadeDeProvas:Float = 4
var resCalculo:String
var resFinancas:String
var resRedacao:String
var aprovado:UInt = 0
var recuperacao:UInt = 0
var reprovado:UInt = 0
var soma:Float = 0
var notasJulio:Dictionary<String,[Float]> = [
    "Cálculo" : [3,8,9,7],
    "Finanças": [9,9,8,9],
    "Redação" : [10,10,4,6]
]


var mediasJulio = [mediaCalculo,mediaFinancas,mediaRedacao]

if mediaFinancas < 6 {
    resFinancas = "Reprovado"
}else if mediaFinancas >= 6 || mediaFinancas <= 7 {
    resFinancas = "Recuperação"
}else{
    resFinancas = "Aprovado"
}

if mediaCalculo < 6 {
    resCalculo = "Reprovado"
}else if mediaCalculo >= 6 || mediaCalculo <= 7 {
    resCalculo = "Recuperação"
}else{
    resCalculo = "Aprovado"
}

if mediaRedacao < 6 {
    resRedacao = "Reprovado"
}else if mediaRedacao >= 6 || mediaRedacao <= 7 {
    resRedacao = "Recuperação"
}else{
    resRedacao = "Aprovado"
}

var ResultadoJulio:Dictionary<String, String> = [
    "Cálculo" : resCalculo,
    "Finanças": resFinancas,
    "Redação" : resRedacao
]

ResultadoJulio.forEach {
    if $0.1 == "Aprovado" {
       aprovado = 1
    }else if $0.1 == "Recuperação" {
            recuperacao = 1
        }else{
            reprovado = 1
        }
}

if reprovado > 0 || recuperacao > 1 {
    print("Júlio bombou, malandro!")
}else{
    print("Júlio passou!")
}
















