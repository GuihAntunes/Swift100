//: Get Set
// É possível no Swift configurar código para ser executado tanto antes, quanto depois da alteração de uma variável

class ContaBancária {
    
    let titular:String
    let numeroConta:String
    
    static var sequencia:Int = 1200
    
    var limite:Float{
        didSet{
            if limite < 0 {
                limite = 0
            }
        }
    }
    
    var saldo:Float {
        willSet{
            print("O novo saldo será de: \(newValue)")
        }
    }
    
    // Podemos criar 'computed properties'
    // além de 'stored properties'
    var disponivelParaSaque:Float {
        return saldo + limite
    }
    
    init(titular:String) {
        self.titular = titular
        self.limite  = 300.0
        self.saldo   = 0
        // Criando número da conta à partir da variável estática 'sequencia'
        self.numeroConta = "\(ContaBancária.sequencia)-10"
        ContaBancária.sequencia += 1
    }
    
    // Podemos criar um mais de um init, por exemplo
    // passando menos parametros e assumindo valores padráo
    convenience init() {
        self.init(titular:"Anônimo")
    }
}

let minhaConta = ContaBancária(titular: "Pedro")
minhaConta.limite = 600
minhaConta.saldo  = 48900
minhaConta.disponivelParaSaque
print(minhaConta.limite)

let contaDele = ContaBancária()
contaDele.titular
contaDele.limite = 1000000
contaDele.saldo  = 192847
contaDele.disponivelParaSaque

print(minhaConta.numeroConta)
print(contaDele.numeroConta)
























