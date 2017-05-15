//: Variáveis e Constantes

// ~ regrinha ~
// var 'nomeDaVariavel' = 'valor'
// var 'nomeDaVariavel':'tipo' = 'valor'

var meuNome = "Guih"

meuNome = "Guilherme"

// É tipagem forte! ou seja
// isso não funciona: meuNome = 6

// com declaração de tipo

var umNúmeroDaSorte:Int = 13

// Swift é UTF-8
var ações = "OLX"

// Lista de tipos básicos
var decimalGrande:Double = 5.4332
var decimal:Float  = 6.2345


// Inteiros

var inteiro:Int = 4

// especificando tamanhos
Int8.max
Int16.max
Int32.max
Int64.max

// texto / string
var frase:String = "Loremp Ipsum"
var letra:Character = "A"

// Dá pra pegar a lista de characters
// usando a propriedade 'characters'
frase.characters

// Boolean
var flag:Bool = false
var valido = true

//: Constantes

// Igual a var, mas o valor só pode ser definido uma vez
let interjeição = "Mas bá, tchê!"

// Ou seja, não vai funcionar:
// interjeicão = "ôxente!"

// Por exemplo, constantes globais
let PI = 3.1415
let DIA_DO_DESCOBRIIMENTO_DO_BRASIL = 22

// Reflexão sobre "ser definido uma só vez"
// veja que interessante:

let tamanho = "G"
let ficaria:String

if tamanho == "G" {
    ficaria = "grande"
}else{
    ficaria = "na medida"
}

// quick fix
// Declare as seguintes variáveis
// Pense se deveria ser let/var e o tipo
// - meuNome
// - meuAnoNascimento
// - minhaNacionalidade
// - minhaIdade
// - minhaAltura
// - tenhoCNH

var meuNome2:String = "Guih"
let meuAnoNascimento:UInt16 = 1992
var minhaNacionalidade:String = "Brasileiro"
var minhaIdade:UInt8 = 23
var minhaAltura:Float = 1.75
var tenhoCNH:Bool = true

print(meuNome2, meuAnoNascimento, minhaNacionalidade, minhaIdade, minhaAltura)
if(tenhoCNH == true) {
    print("Tenho")
}




















