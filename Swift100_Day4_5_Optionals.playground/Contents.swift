//: Optionals
// Uma optional diz:
// A) Existe um valor e ele é igual a x
//    OU
// B) Não existe valor nenhum, no geral

class Time {
    var nome:String
    var gols:UInt
    var golsNosPenaltis:UInt? // Inteiro, sem sinal, opcional
    
    init(nome:String){
        self.gols = 0
        self.nome = nome
        self.golsNosPenaltis = nil
    }
}

let mengão = Time(nome: "Mengão")
mengão.golsNosPenaltis = 3
print(mengão.golsNosPenaltis)

// Estruturas para lidar com optionals

// 1) IF LET
// Verifica se um optional tem valor e, se sim, já desempacota (unwrap) o valor numa constante

func tevePenaltis(time:Time){
    
    // tenta desempacotar golsNosPenaltis, opcional, na nova constante chamada quantosPenaltis
    if let quantosPenaltis = time.golsNosPenaltis {
        print("Teve, e foram \(quantosPenaltis) gols do \(time.nome)")
    // se falhar, caso seja nil, cai no else
    }else{
        print("Não teve!")
    }
}

tevePenaltis(mengão)

let vasco = Time(nome: "Vasco")
tevePenaltis(vasco)

// 2) GUARD LET
// Implementação forma de pattern de early return
// Usado quando precisamos validar variáveis que são imprescindíveis na execução de uma função

func quemGanhouNosPenaltis(a:Time, _ b:Time) -> Time? {
    
    // Garanta que eu consiga recuperar os valores dos penaltis para esta partida, senão
    // não temos mais o que fazer nessa função, pode tratar o erro e retornar
    guard let penaltisTimeA = a.golsNosPenaltis,
        let penaltisTimeB = b.golsNosPenaltis else {
            print("Esse jogo não teve pênaltis")
            return nil
    }
    
    if penaltisTimeA > penaltisTimeB {
        return a
    }else if penaltisTimeA < penaltisTimeB {
        return b
    }else{
        return nil
    }
}

quemGanhouNosPenaltis(vasco, mengão)
vasco.golsNosPenaltis = 0
print("Supondo que o Vasco tenha feito \(vasco.golsNosPenaltis) nos penaltis!")

if let ganhador = quemGanhouNosPenaltis(vasco, mengão) {
    print("Quem ganhou foi \(quemGanhouNosPenaltis(vasco, mengão)?.nome)")
}

// Dois detalhes

// 1) Operador de Coalescência: podemos retirar o valor do optional rapidamente
// caso uma alternativa esteja disponível

var minhaCorFavorita:String? = "azul"
print("Minha cor favorita é \( minhaCorFavorita ?? "desconhecida")")

minhaCorFavorita = nil
print("Minha cor favorita é \( minhaCorFavorita ?? "desconhecida")")

// Force Unwrap: utilizado para forçar o desempacotamento
// quando achamos que o valor sempre vai estar lá
// Atenção: se não estiver => CRASH ! ❌
// Tipo: rm -rf

var idade:Int? = 30

if idade != nil {
    print("A idade é", idade!) // ❌❌❌
}

// Dúvidas: luizgustavolino@gmail.com

// 1.a Faça uma classe Brinquedo, que tenha um método 'mover'.
// Em seguida, crie três classes: Carro, Barco, Avião.
// Sobrescreva o método 'mover' (com override) nestas classes, fazendo um print do texto adequado.
// Ex: "voandoo", para avião.mover().

// 1.b Faça uma classe ControleRemoto, que receba no init um Brinquedo
// e tenha um método 'acionar'. Esse método deve chamar 'mover' do brinquedo.
// let meuControle = ControleRemoto(para:avião)
// meuControle.acionar() // deve mostrar "voandoo"


class Brinquedo {
    func mover(){
        print("Brinquedo movendo!")
    }
}

class Carro : Brinquedo {
    override func mover() {
        print("Correndo 🏎")
    }
}

class Avião : Brinquedo {
    override func mover() {
        print("Voando 🛩")
    }
}

class Barco : Brinquedo {
    override func mover() {
        print("Navegando 🛥")
    }
}

class ControleRemoto {
    
    var brinquedoControlado:Brinquedo
    
    init(para brinquedoAlvo:Brinquedo) {
        brinquedoControlado = brinquedoAlvo
    }
    
    func acionar(){
        brinquedoControlado.mover()
    }
    
}

let meuBrinquedo = Avião()
let meuCarro     = Carro()
let meuControle  = ControleRemoto(para: meuBrinquedo)
let meuControle2 = ControleRemoto(para: meuCarro)
meuControle.acionar()
meuControle2.acionar()


// ------------------------------------------------------------------------------------------------------------

// 🎉 Desafio de Carnaval 🎉

// Crie um enum "Critério", com os valores:
// Bateria, Evolução, Enredo, Alegorias

// Cria uma classe "EscolaDeSamba", contendo
// * nome:String
// * notas[Critério:[Float?]]
// -> Float?, médiaParaCritério, que recebe um Critério
// -> Float?, médiaFinal // é a soma das médias dos critérios

// Faça uma classe "Jurados", ela recebe uma escola de samba
// e atribui notas aleatórias, entre 5.0 e 10.0, para os critérios.
// Para isso faça um método atribuirNotas.
// Existe uma chance em 20% do jurado não dar uma nota!
// São quatro notas por critério. Ex: [9.0, 10.0, nil, 9.5]

// Regra da média das notas: são quatro notas, de 5.0 até 10.0. Deve descartar a menor e tirar a média das restantes. Se alguma nota faltar, considera o valor da maior das notas válidas. Se todas faltarem, fica com 10.0.

// Crie uma classe "Carnaval", onde
// * escolas:[EscolaDeSamba]
// * jurados:Jurados
// -> Void, init(escolas:[EscolaDeSamba])
// -> Void, apurar() // os jurados dão as notas
// -> EscolaDeSamba, vencedora()



// NUNCA FONTE MENOR QUE 12 EM UM APP

