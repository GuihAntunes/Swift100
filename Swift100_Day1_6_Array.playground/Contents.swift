//: Array
// também conhecido como: vetor, coleção

// construção
var pessoas = ["João", "Carlos", "Esteban"]

// tipando explicitamente
let megasena:Array<UInt8> = [12,18,46,50,55]
let constantes:[UInt] = [1,1,2,3,5,8,13,21]

// array de tuplas
let muitasTuplas:[(String, Int)]

// acesso dos valores
pessoas[0]

// alterar os valores
pessoas[1] = "Maria da Silva"

// inserir valores
pessoas.append("Hideki") // insere no fim
pessoas.insert("George", atIndex: 0) // no começo

// contando elementos
pessoas.count

// Remoções
pessoas.removeLast()
pessoas.removeFirst()

// Drop first: retorna um vetor, desconsiderando o primeiro item
// atenção: o vetor original não é alterado
pessoas.dropFirst()

// inicializar com valores
var refeições = Array(count: 7, repeatedValue: "Bacon")
print(refeições)

//tamanho e vazio
refeições.count
refeições.underestimateCount() // mais rápido quando for muito grande
refeições.isEmpty

// Procurar no vetor
pessoas.contains("João")

// Funções de alto nível:
// forEach, filter, map, Reduce

var soma:UInt = 0
constantes.forEach{
    print("Analisando \($0)")
    soma += $0
}

print(soma)

// filtrando somente os ímpares em fibo
let impares = constantes.filter{
    return $0%2 != 0
}

print(impares)

let dobrado = constantes.map{
    return $0*2
}

print(dobrado)

let reduzir = constantes.reduce(0) {
    return $0 + $1
}

print(reduzir)

// Desafio

// Faça uma tupla para representar uma capital do Sudeste, com o nome e a população
// Num vetor de capitais, adicione as 4 capitais
// Utilizando Filter, mostre quais tem mais de 5 milhões de habitantes
// Utilizando map, faça um vetor de string com os nomes das capitais
// Utilizando reduce, somar a população das capitais do sudeste

typealias Capital = (nome:String, população:UInt)
var SP:Capital = ("São Paulo", 11_967_825)
var RJ:Capital = ("Rio de Janeiro", 6_476_631)
var SA:Capital = ("Salvador", 2_921_087)
var DF:Capital = ("Brasília", 2_591_830)

var capitais = [SP, RJ, SA, DF]

var pop = capitais.filter {
    $0.população > 5_000_000
}
print(pop)

var nomes = capitais.map{
    $0.nome
}
print(nomes)

var total = capitais.reduce(UInt(0)) {
    $0 + $1.população
}

print(total)

//: Lista de compras
// 1.Criar tupla produto (nome:String, comprado:Bool) e array listaDeCompras (de Produtos)
// 2.Adicionar produtos
// 3.Listar produtos
// 4.Marcar produto como comprado
// 5.Listar produtos
// 6.Listar produtos não comprados

typealias Produto = (nome:String, comprado:Bool)

var pr1 = ("Sal", true)
var pr2 = ("Arroz", false)
var pr3 = ("Leite", true)
var pr4 = ("Chocolate", true)

var listaDeCompras:Array<Produto> = [pr1, pr2, pr3, pr4]

var mapLista = listaDeCompras.map{
    print("Produto: ", $0.nome)
}

var mapLista1 = listaDeCompras.forEach{
    
}

var mapLista3 = listaDeCompras.map{
    print("\nProduto: ", $0.0, "\nComprado: ", $0.1 == true ? "✅\n":"❌\n")
}




