//: Herança é um conceito importante em Programação orientada a objetos
// utilizado com bastante frequência, gerando ganhos em clareza e
// reaproveitamento de código

// Classe base
class Personagem {
    var vida:Int = 10_000
    
    func gritar() -> String {
        if vida > 4_000 {
            return "Haaaaaaa!"
        }else{
            return "Arrrgh"
        }
    }
}

// dizemos que inimigo herda de Personagem
// Personagem é Superclass de Inimigo
// Inimigo é subclasse de Personagem
class Inimigo : Personagem {
    let defesa:Int = 6_000
    
    override func gritar() -> String {
        return "Muahahaha 😈"
    }
}

class Herói : Personagem {
    let ataque:Int = 9_500
    
    func atacar(alvo:Inimigo){
        alvo.vida -= self.ataque - alvo.defesa
    }
}

let goku = Herói()
let vegeta = Inimigo()
print
print("Goku grita: " + goku.gritar())
goku.atacar(vegeta)

// Quantos pontos de vida tem Vegeta ?
print("Goku ataca Vegeta, que agora tem \(vegeta.vida) pontos de vida!")
print("Vegeta grita: " + vegeta.gritar())

// Quick fix

// Faça uma classe 'Animal', em seguida e a partir dessa uma classe Cachorro e outra Gato
// Crie propriedades e métodos, pelo menos 3 de cada, pensando em herança e orientação a objetos
// Obs: Não precisa implementar os métodos

class Animal {
    
    var peso:Double
    var altura:Double
    var cor:String
    
    init(peso:Double, altura:Double, cor:String) {
        self.peso     = peso
        self.altura   = altura
        self.cor      = cor
    }
    
    func correr(){
        print("🏃🏻")
    }
    
    func respirar(){
        
    }
    
    func reproduzir(){
        
    }
    
    func alimentar(){
        self.peso += 5
    }
}

class Cachorro : Animal {
    
    var contadorDeOssosEnterrados:UInt
    
    override init(peso: Double, altura: Double, cor: String) {
        self.contadorDeOssosEnterrados = 0
        super.init(peso: peso, altura: altura, cor: cor)
    }
    
    func latir(){
        print("Au au au 🐶")
    }
    
    override func correr() {
        print("🚗🏃🏻")
    }
    
}

class Gato : Animal {
    
    func ronronar(){
        print("Rrrrrrr")
    }
    
}

















