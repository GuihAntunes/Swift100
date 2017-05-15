//: Recap Day 3

// Crie uma classe Motor, que tenha:
// * potência:Int (90cv, etc)
// * combustível:String (gasolina, álcool, flex, diesel)
// * ativo:Bool (variável que indica se está ligado ou não)
// * nivelDoÓleo:Float (1.0 cheio, 0.0 vázio)
// * kmsRodados:Int
// - rodar(kms:Int) // hard: a cada 100km, abaixe 10% do óleo

// Crie uma classe Pneu, que tenha
// * marca:String (ex: pirelli, goodyear)
// * furado:Bool
// * aro:Int (hard: permitir somente aros válidos: 13,14,15,16
// * kmsRodados:Int
// - rodar(kms:Int) // hard: a cada 5km, existe 5% de chance de furar

// Crie uma classe Carro, que tenha:
// cor:String
// ano:Int
// marca:String
// pneus:[Pneu]
// motor:Motor
// - rodar(kms:Int) // repasse os kms pros pneus e carro

// Agora monte seu carro :)

class Motor {
    var potencia:UInt
    var combustivel:String
    var ativo:Bool = false
    var nivelDoOleo:Float = 1.0 {
        didSet{
            if nivelDoOleo <= 0 {
                nivelDoOleo = 0
                ativo = false
            }
        }
    }
    var kmsRodados:UInt = 0
    
    init(potencia:UInt, combustivel:String){
        self.potencia = potencia
        self.combustivel = combustivel
        self.ativo = false
        self.nivelDoOleo = 1.0
        self.kmsRodados = 0
    }
    
    func rodar(kms:UInt) {
        if nivelDoOleo == 0 {
            print("Carro sem óleo")
            ativo = false
        }else{
            
            for _ in self.kmsRodados...self.kmsRodados+kms {
                self.nivelDoOleo -= 0.001
                self.kmsRodados += kms
            print("Rodei \(kms) KMs e o nível do óleo está em: \(self.nivelDoOleo)")
            self.ativo = false
            print("Parei de rodar. Motor ligado? \(self.ativo)")
            if self.nivelDoOleo <= 0 {
                self.nivelDoOleo = 0
                print("Acabou o óleo do carro!")
                return
                }
            }
            
        }
    }
}



import Foundation
class Pneu {
    let marca:String
    var furado:Bool = false
    let aro:UInt
    var kmsRodados:UInt
    func rodar(kms:UInt) {
        for _ in 1...kms{
            
            self.kmsRodados += 1
            if Int(arc4random_uniform(101)) < 5 {
                if self.kmsRodados % 5 == 0{
                    self.furado = true
                    print("Deu ruim! Pneu furou ☠️")
                    return
                }
            }
        }
    }
    
    init(marca:String, aro:UInt, kmsRodados:UInt) {
        self.marca = marca
        if aro < 13 || aro > 16 {
            self.aro = 13
        }else{
            self.aro = aro
        }
        self.kmsRodados = kmsRodados
    }
}

class Carro {
    var cor:String
    let ano:UInt
    let marca:String
    var pneus:[Pneu]
    var motor:Motor
    // outros podem ver, somente eu posso alterar
    public private(set) var kmsRodados:UInt
    
    init(cor:String, ano:UInt, marca:String, pneus:[Pneu], tipo:String) {
        self.cor   = cor
        self.ano   = ano
        self.marca = marca
        self.pneus = pneus
        switch tipo {
        case "Gasolina":
            self.motor = Motor(potencia: 120, combustivel: tipo)
        case "Álcool":
            self.motor = Motor(potencia: 150, combustivel: tipo)
        case "Diesel":
            self.motor = Motor(potencia: 200, combustivel: tipo)
        case "Flex":
            fallthrough
        default:
            self.motor = Motor(potencia: 130, combustivel: tipo)
        }
        self.kmsRodados = 0
    }
    
    func rodar(kms:UInt) {
        motor.ativo = true
        for _ in 1...kms{
            self.motor.rodar(1)
            self.pneus.forEach { $0.rodar(1) }
            self.kmsRodados += 1
            if self.motor.nivelDoOleo == 0 {
                print("Paramos por falta de óleo!")
                return
            }
            
            for pneu in pneus {
                if pneu.furado {
                    print("Paramos porque furou o pneu!")
                    return
                }
            }
        }
    }
    
    
}


let motorNovo = Motor(potencia: 200, combustivel: "Gasolina")
let pneuNovo1  = Pneu(marca: "Firestone", aro: 16, kmsRodados: 0)
let pneuNovo2  = Pneu(marca: "Firestone", aro: 16, kmsRodados: 0)
let pneuNovo3  = Pneu(marca: "Firestone", aro: 16, kmsRodados: 0)
let pneuNovo4  = Pneu(marca: "Firestone", aro: 16, kmsRodados: 0)
let carroNovo = Carro(cor: "Branco", ano: 2017, marca: "BMW", pneus: [pneuNovo1, pneuNovo2, pneuNovo3, pneuNovo4], tipo: "Álcool")

carroNovo.rodar(120)
print("Rodei \(carroNovo.kmsRodados) antes de parar!")









