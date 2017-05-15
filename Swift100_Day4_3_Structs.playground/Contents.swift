//: Structs

// São bem semelhantes a class, mas representam de maneira mais simples estruturas menos complexas (não há herança, por exemplo)

struct Coordenadas {
    var latitude:Double
    var longitude:Double
}

let saoPaulo = Coordenadas(latitude: -46.5, longitude: -23.4)
let brasilia = Coordenadas(latitude: -15.79, longitude: -47.86)

print("São Paulo fica nas coordenadas:  \(saoPaulo.latitude) x \(saoPaulo.longitude)")

// Em Swift é possível adicionar métodos em Structs

struct Retangulo {
    var largura:Int
    var altura:Int
    
    func area() -> Int {
        return largura * altura
    }
}

let quadrado = Retangulo(largura: 4, altura: 4)
quadrado.area()

// Quando uma struct altera num de seus métodos o valor de uma propriedade, temos que marcar como mutating

struct Contador {
    var valor:Int = 0
    
    mutating func incrementar(){
        self.valor += 1
    }
}

var meuContador = Contador()
for _ in 1...10{
    meuContador.incrementar()
}

meuContador.valor


// Quick fix
// Crie uma struct Cadastro, como nome, cpf, data de nascimento
// Crie nessa struct uma função que calcula a idade (assumir que estamos em 2016)

struct Cadastro {
    let nome:String
    let cpf:Int
    let diaNascimento:Int
    let mesNascimento:Int
    let anoNascimento:Int
    
    func calculaIdade (dia:Int, mes:Int, ano:Int) -> Int {
        if mesNascimento < mes && diaNascimento < dia {
            return ano - anoNascimento
        }else{
            return ano - anoNascimento - 1
        }
    }
    
}

let guih = Cadastro(nome: "Guilherme Antunes Ferreira", cpf: 427_807_198_18, diaNascimento: 10, mesNascimento: 10, anoNascimento: 1992)
print(guih.calculaIdade(30, mes: 07, ano: 2016))


// Crie uma struct Circulo, que tenha um raio e uma função que retorna a área

struct Circulo {
    let raio:Double
    func calculaArea() -> Double {
        return 3.1415 * raio * raio
    }
}

let circle = Circulo(raio: 15)
circle.calculaArea()































