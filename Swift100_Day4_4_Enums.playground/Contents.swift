//: Enums
// Enumeradores são como listas de opções, utilizados amplamente para organizar código e listar possibilidades

enum StatusDoPedido{
    case Feito
    case Faturado
    case EmSeparação
    case Enviado
    case Entregue
    case Cancelado
}

// Podemos listas os cases em uma linha
enum Classe {
    case Economica, Executiva, Primeira
}

// Podemos associar valores e extrair valores
enum ErrosHTTP : Int {
    case BadRequest   = 400
    case Unauthorized = 401
    case Forbidden    = 403
    case NotFound     = 404
}

let codigoDoErro = ErrosHTTP.NotFound
print("Código do erro: \( codigoDoErro.rawValue )")
let novoErro = ErrosHTTP(rawValue: 403)


// Quando o tipo é string.. rawValue funciona também

enum CoberturasDeSorvete : String {
    case Maracujá
    case Chocolate
    case Manga
    case RomeuJulieta = "Romeu e Julieta"
}

var preferida = CoberturasDeSorvete.Chocolate
print("Minha preferida é " + preferida.rawValue)
print("Pode ser também " + CoberturasDeSorvete.RomeuJulieta.rawValue)

// Além disso, cada case no swift pode armazenar variáveis

enum StatusVeiculo {
    case Estacionado
    case Movimentando(velocidade:Int)
}

class Fusca {
    var estado:StatusVeiculo = .Estacionado
}

let meuFusca = Fusca()
print("Meu fusca está \(meuFusca.estado)")
meuFusca.estado = .Movimentando(velocidade: 80)
print("Agora meu fusca está \(meuFusca.estado)")

// Enums são perfeitos pra se usar com switch

enum CorDeCarro : String {
    case Preto, Prata, Branco, Vermelho
}

let corDoMeuCarro:CorDeCarro = .Branco

switch corDoMeuCarro {
case .Preto:
    print("Parece Uber!")
case .Prata, .Vermelho:
    print("Fácil de vender!")
case .Branco:
    print("É carro de empresa?")
}

// e quando temos valores associados?

// sem problemas ;)

switch meuFusca.estado {
case .Estacionado:
    print("Meu fusca está enconstado 😎")
case .Movimentando(let velocidade):
    if velocidade < 60 {
        print("Andando, mas seguro")
    }else{
        print("Cuidado! ⚠️")
    }
}

// Quick fix
// 1.0 Faça um enum para representar os estados de um semáforo
// 2.0 Faça um enum para representar os estados de um jogador de futebol
// 3.0 Faça um enum de canais de TV, cujo tipo associado seja int, com o número
// 4.0 Faça um enum de marchas de um carro

enum Semaforo : String {
    case Vermelho = "🔴"
    case Amarelo = "⚠️"
    case Verde    = "✅"
}

let meuSemaforo:Semaforo = .Vermelho

switch meuSemaforo {
case .Vermelho:
    print("O sinal está fechado " + meuSemaforo.rawValue)
case .Amarelo:
    print("Cuidado, vai fechar " + meuSemaforo.rawValue)
case .Verde:
    print("Vá em frente " + meuSemaforo.rawValue)
}

enum StatusDoJogador {
    case NoBanco, EmJogo, ForaDaPartida, NãoConvocado
}

enum CanaisDeTV : Int {
    case Cultura = 2
    case SBT     = 4
    case Globo   = 5
    case Record  = 7
    case RedeTV  = 9
    case Band    = 13
}

print("A Cultura fica no canal \(CanaisDeTV.Cultura.rawValue)")
print("No canal 13 tem \(CanaisDeTV(rawValue:13))")

enum Marchas {
    case Primeira, Segunda, Terceira, Quarta, Quinta
    case Ré
}

// Por último, enums também tem métodos

enum Botao {
    case Ligado
    case Desligado
    
    mutating func troca() {
        if self == Desligado {
            self = Ligado
        }else{
            self = Desligado
        }
    }
}

var meuInterruptor = Botao.Ligado
meuInterruptor.troca()
print("O botão está: \(meuInterruptor)")


























