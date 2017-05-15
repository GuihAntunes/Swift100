//: Funções
// receita
// func <nome> (<nome do_parm:<tipo,...> -> <retorno>
//      <corpo>
// }

func falarBomDia() {
    print("Bom dia !")
}

falarBomDia()

// Função com parâmetro
func falarBoaTarde(nome:String) {
    print("Boa tarde, \(nome)!")
}

falarBoaTarde("Aline")
falarBoaTarde("Luana")

// Função com retorno
func boaNoite(nome:String) -> String {
    return "Boa noite, \(nome)!"
}

var saudacao = boaNoite("Bam")
print("Como se diz: \(saudacao)")
saudacao = boaNoite("Virginia")
print("Como se diz: \(saudacao)\n")


// Funções somente com retorno
func diaDoBanho() -> String {
    return "sábado"
}
print("Qual é o dia do banho? É \(diaDoBanho())!\n")

// Quick fix: Faça uma função que dia 'oi' por um determinado número de vezes, ou seja, receber um parâmetro Int chamado vezes
// ex: repitaOi(10)

func repitaOi(vezes:Int) {
    for _ in 1...vezes{
        print("Oi")
    }
}

repitaOi(10)

// Faça uma função que retorna verdadeiro ou falso se um nome é bem grande (maior que 10 letras)
func nomeGrande (nome:String) -> Bool {
    return nome.characters.count > 10
}

print(nomeGrande("Lewandowski"))
print(nomeGrande("Guilherme"))

// Funções com múltiplos parâmetros
func avaliarImovel(metros:Int, vagas:Int, lazer:Bool) -> Int {
    var valor = 5000 * metros
    valor += vagas * 5000
    valor += lazer ? 15000 : 0
    return valor
}


let aptoPadrao = avaliarImovel(80, vagas: 2, lazer: true)
print("Este imóvel com 80m, 2 vagas custa: \(aptoPadrao)")

let kitnet = avaliarImovel(30, vagas: 0, lazer: false)
print("Este imóvel com 30m, sem vagas custa: \(kitnet)")

// Funções com múltiplos retornos
func erroParaPaginaNaoEncontrada() -> (code:Int, status:String) {
    return (404, "Page Not Found")
}

print(erroParaPaginaNaoEncontrada().status)

// Outra maneira de construir:
let (codigoDeErro, mensagem) = erroParaPaginaNaoEncontrada()
print(mensagem)

// Outra maneira de construir:
typealias Error = (code:Int, status:String)
func erroParaPaginaNaoEncontrada2() -> Error {
    return (404, "Page Not Found")
}

// Quick fix 
// Fazer uma função que diz se o nome é maior que o sobrenome, ou seja, receber parâmetros 'nome', 'sobrenome'.
// Retornar booleano, true se o nome for maior

//verificaSeNomeMaior("Luiz","Gustavo") // retorna false
//verificaSeNomeMaior("Alexandre","Gomes") // retorna true

func verificaSeNomeMaior(nome:String, sobrenome:String) -> Bool {
    return nome.characters.count > sobrenome.characters.count
}

verificaSeNomeMaior("Luiz",sobrenome:"Gustavo")
verificaSeNomeMaior("Alexandre",sobrenome:"Gomes")


// Parâmetro com valor padrão

func contagemRegressiva(valor:Int = 10){
    for numero in Array(1...valor).reverse(){
        print("Contando: \(numero)")
    }
}

contagemRegressiva(2)
contagemRegressiva()

// Enviando parametros mutáveis

func dobrar(inout valor:Int){
    valor *= 2
}

var num = 10
dobrar(&num)
print(num)


// Nomeando parâmetros
// Por padrão, no Swift 2.2, temos:
// 1) primeiro parâmetro é omitido na chamada
// 2) seguintes são visualizados
// mas podemos alterar isso quando criamos nossas funções

func triplicar(numero valor:Int) -> Int {
    return valor * 3
}

triplicar(numero: 4)

func multiplicar(numero valor:Int, por multiplicando:Int) -> Int {
    return valor * multiplicando
}

multiplicar(numero: 10, por: 3)

// Remover nome dos parâmetros
func soma(v1:Int,_ v2:Int) -> Int {
    return v1 + v2
}

soma(10, 4)

// Recap Day 2
// 1) Faça uma função que conta quantas vogais há num texto
var vogais:Array<String> = ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"]

func quantasVogais(texto:String) -> String {
    var aux = 0
   // texto.characters.forEach() {
        //if $0 == "a" || $0 == "A" || $0 == "e" || $0 == "E" || $0 == "i" || $0 == "I" || $0 == "o" || $0 == "O" || $0 == "u" || $0 == "U" { // Pensar em uma maneira mais inteligente de validar para considerar acentuação: vetor talvez
       //     aux += 1
      //  }
        for char in texto.characters {
            if vogais.contains(String(char)) {
                aux += 1
            }
            
        }
    return "O texto tem \(aux) vogal(ais)!"
}

quantasVogais("Um lugar que deseja conhecer?")
quantasVogais("")

// Bonus: Fatorial

func fatorial(x:Int) -> Int {
    return x == 0 ? 1 : x+fatorial((x-1))
}

// 2) Retorna o dobro de um número com casas decimais


func dobrarDecimal(x:Double) -> Double {
    return x * 2
}

dobrarDecimal(1.02)

// 3) Retorna a média aritimética entre 2 valores reais
func media(x:Double, _ y:Double) -> Double {
    return (x+y)/2
}
media(2, 3)

// 4) Retorna true se um número é negativo
func éNegativo(x: Double) -> Bool {
    return x < 0
}

éNegativo(-5)
éNegativo(0)
éNegativo(5)

// 5) Retorna o inverso de um número ( 2, recebe -2. -3, recebe 3)
func inverte(a: Int) -> Int {
    return a * -1
}
inverte(2)
inverte(-7)

// 6) Retorna o menor valor de um vetor de Int
func menorNoVetor( listaInteiros:[Int]) -> Int {
    if listaInteiros.isEmpty {
        return 0
    }
    var menor:Int = listaInteiros[0]
    for num in listaInteiros.dropFirst() {
        if num < menor {
            menor = num
        }
    }
    
    return menor
}

menorNoVetor([1,4,2,6,7,3,5,6,4,2,35,6,45,62,10,2456,56])

// 7) Retorna se um número é primo
func éPrimo(a:Int) -> Bool {
    if num < 0 {
        return éPrimo(inverte(num))
    }
    var divisiveis = 0
    for i in 1...(num > 0 ? 1 : num){
        if num%i == 0 {
            divisiveis += 1
        }
    }
    
    return divisiveis == 2
}

éPrimo(2)
éPrimo(1)
éPrimo(0)
éPrimo(6)
éPrimo(7)

import Foundation
// 8) Retorna as iniciais de um nome (ex: "Luiz Gustavo", recebe "LG")
func iniciais(nome: String) -> [String] {
    
    if nome.isEmpty {
        return []
    }
    
    return nome.componentsSeparatedByString(" ").map{
        String($0.characters.first)
    }

}

iniciais("Guilherme Antunes Ferreira")


// 9) Retorna a última letra de cada palavra de uma frase
func finais(nome: String) -> [String] {
    
    if nome.isEmpty {
        return []
    }
    
    return nome.componentsSeparatedByString(" ").map{
        String($0.characters.last)
    }
    
}

finais("Guilherme Antunes Ferreira")


// Soluções Lino

//:

// Função que conta quantas vogais

func contarVogais(texto:String) -> Int {
    
    var vogais = 0
    for char in texto.characters {
        
        let listaVogais = ["a","e","i","o","u"]
        if listaVogais.contains(String(char)){
            vogais += 1
        }
        
    }
    
    return vogais
}

contarVogais("hello")
contarVogais("Luiz Gustavo")


// Função fatorial
func fatorial1(x:Int) -> Int {
    return x == 0 ? 1 : x*fatorial(x-1)
}

fatorial1(3)

// Retorna o dobro de um número decimal

func dobroDecimal(numero:Double) -> Double{
    return numero * 2
}

dobroDecimal(12.2)
dobroDecimal(3.14)

// retorna a média aritmética
func media1(v1:Double,_ v2:Double) -> Double{
    return (v1+v2)/2.0
}

media1(10, 5)

// Retorna se um número é negativo
func negativo(numero:Int) -> Bool {
    if numero < 0 {
        return numero < 0
    }else{
        return false
    }
}

negativo(12)
negativo(-3)
negativo(0)

// Função que retorna o inverso de um número
func inverso(numero n:Int) -> Int{
    return n * -1
}

inverso(numero: 10)
inverso(numero: -5)

func numeroEmail(usuario usuario:String, paraCaixa caixa:String) -> Int{
    print("estou analisando a caixa" + caixa)
    return 3
}

// nroEml("Lino", "Entrada")
numeroEmail(usuario:"lino", paraCaixa: "inbox")

// applyStyle("facebook-btn")

// Retorna o menor numero de um vetor

func menorNoVetor1( listaInteiros:[Int]) -> Int {
    if listaInteiros.isEmpty {
        return 0
    }
    
    var menor:Int = listaInteiros[0]
    for num in listaInteiros.dropFirst() {
        if num < menor {
            menor = num
        }
    }
    
    return menor
}

menorNoVetor1([2,5,7,1,-1,5,7,-20,10])
menorNoVetor1([123,1245,37,48,234,235,67234])


// Retorna se um número é primo

func éPrimo1(num:Int) -> Bool{
    
    if num < 0 {
        return éPrimo(inverso(numero: num))
    }
    
    var divisiveis = 0
    for i in 1...(num > 0 ? num : 1){
        if num%i == 0 {
            divisiveis += 1
        }
    }
    
    return divisiveis == 2
}

éPrimo1(-3)
éPrimo1(-1)
éPrimo1(0)
éPrimo1(2)
éPrimo1(3)
éPrimo1(4)
éPrimo1(5)
éPrimo1(6)
éPrimo1(7)


// Retorna as iniciais de um nome
import Foundation

func iniciais1(nome:String) -> [String] {
    
    if nome.isEmpty {
        return []
    }
    
    return nome.componentsSeparatedByString(" ")
        .map{ String($0.characters.first) }
    
}

print(iniciais1("Luiz Gustavo Lino"))


func finais1(nome:String) -> [String] {
    
    if nome.isEmpty {
        return []
    }
    
    return nome.componentsSeparatedByString(" ")
        .map{ String($0.characters.last) }
    
}

print(finais1("Luiz Gustavo Lino"))



enum BoundaryType{
    case Start
    case End
}

func nameBoundaries(name:String, type:BoundaryType) -> [String] {
    
    if name.isEmpty {
        return []
    }
    
    return name.componentsSeparatedByString(" ")
        .map{
            let chars = $0.characters
            switch type{
            case .End:
                return String(chars.last)
            case .Start:
                return String(chars.first)
            }
    }
    
    nameBoundaries("Luiz Gustavo", type: .Start)

}


