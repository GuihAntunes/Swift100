//: Protocols
// Protocolos são acordos

// Protocolo 'TenhoDescrição' diz que todos que respeitam esse protocolo tem uma função chamada descrição, retorno String

protocol TenhoDescricao {
    func descricao () -> String
}

struct Retangulo : TenhoDescricao {
    var largura:Double
    var altura:Double
    
    func descricao() -> String {
        return "Retangulo com área \(largura * altura)"
    }
    
}

class Gato : TenhoDescricao {
    var nome:String
    
    init(nome:String) {
        self.nome = nome
    }
    
    func descricao() -> String {
        return "Sou um gato de nome \(nome)"
    }
    
}

let meuGato = Gato(nome: "Mike")
let umQuadrado = Retangulo(largura: 2, altura: 2)

meuGato.descricao()
umQuadrado.descricao()



// Além de funções, podemos pedir variáveis ou constantes

protocol QueLigaDesliga {
    var ligado:Bool {get set}
}

protocol QueTemMarca {
    var marca:String {get}
}

class Veículo {
    var potencia = 200
}

// Podemos urilizar os três dessa maneira
class Motoca : Veículo, QueTemMarca, QueLigaDesliga {
    var marca: String
    var ligado: Bool = false
    
    init (marca umaMarca:String){
        marca = umaMarca
    }
}

var minhaMoto = Motoca(marca: "Yamaha")
minhaMoto.ligado = true

// Podemos utilizar o mesmo protocolo para outras classes onde ele faz sentido

class TV : QueLigaDesliga {
    var ligado: Bool = false
}























