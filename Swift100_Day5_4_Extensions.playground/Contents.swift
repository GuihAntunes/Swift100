//: Extensions

// Extensions são uma maneira de incluir funcionalidades em classes que já existem, principalmente as do sistema

extension String {
    
    func soVogais() -> String {
        
        let vogais = ["a","e","i","o","u"]
        let resposta = self.characters.filter{
            return vogais.contains(String($0).lowercaseString)
        }
        return String(resposta)
    }
    
}

"Nossaaaa!".soVogais()

// Mais um exemplo
extension Int {
    func faça( closure:(Int)->() ){
        for i in 0..<abs(self){
            closure(i)
        }
    }
}

3.faça{ indice in
    print("\(indice) Oi!")
}

// Extensions + Protocols

protocol DaquelesOnOff {
    var ligado:Bool {get set}
    func tempoDeVida() -> Int
}

extension DaquelesOnOff {
    
    mutating func liga(){
        ligado = true
    }
    
    mutating func desliga(){
        ligado = false
    }
    
}

class AspiradorDePó : DaquelesOnOff {
    var ligado: Bool = false
    
    func tempoDeVida() -> Int {
        return 10
    }
}

var meuAspirador = AspiradorDePó()
meuAspirador.liga()









































