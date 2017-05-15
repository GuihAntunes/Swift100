//: Type Casting
// Swift é fortemente tipado, por isso precisamos várias vezes converter tipos de objetos

class Funcionario {
    
    var nome:String
    var salário:Float
    
    init(nome nomeDaPessoa:String, salarioInicial:Float){
        nome    = nomeDaPessoa
        salário = salarioInicial
    }
    
}

class Senior : Funcionario {
    var plr:Float = 2.5
}

class Diretor : Senior {
    var bonus:Float = 50_000
}

// Typecast com IF

func éUmDiretor(umFuncionario:Funcionario) -> Bool {
    
    // notação para construir uma constante trocando tipo
    if let umDiretor = umFuncionario as? Diretor {
        print("É um diretor, com bonus de \(umDiretor.bonus)")
    }
    
    if umFuncionario is Diretor {
        return true
    }else{
        return false
    }
    
}

éUmDiretor(Diretor(nome: "Carlos", salarioInicial: 18_000))
éUmDiretor(Funcionario(nome: "Alberto", salarioInicial: 1_200))

// Typecasting com Switch

let funcionarios = [
    Diretor(nome: "Pedro", salarioInicial: 14_000),
    Senior(nome: "Carol", salarioInicial: 8_200),
    Senior(nome: "Miguel", salarioInicial: 8_200),
    Funcionario(nome: "Patrícia", salarioInicial: 4_600)
]

func salarioDeFevereiro(umFuncionario:Funcionario) -> Float {
    
    switch umFuncionario {
        
    case let umDiretor as Diretor:
        return umDiretor.salário + umDiretor.plr * umDiretor.salário + umDiretor.bonus
    
    case let umSenior as Senior:
        return umSenior.salário + umSenior.plr * umSenior.salário
    
    default:
        return umFuncionario.salário
    }
}

for funcionario in funcionarios {
        let salario = salarioDeFevereiro(funcionario)
        print("O salário de Fevereiro do(a) \(funcionario.nome) é \(salario)")
}§§§§§















