//: Closure

// No swift, funções podem ser atribuídas a variáveis
// Depois disso, podemos enviar estas variáveis por métodos e chamá-las sempre onde for preciso


// Exemplo de Closure, sem param, sem retorno e com inferência de tipo

let faladorDeOi = {
    print("Oi!")
}

faladorDeOi()

// Exemplo de Closure, sem param com tipagem
let faladorDeTchau:() -> () = {
    print("Tchau!")
}

faladorDeTchau()

func repeteCincoVezes ( closure: () -> () ) {
    for _ in 1...5 {
        closure()
    }
}

repeteCincoVezes(faladorDeOi)
repeteCincoVezes(faladorDeTchau)
repeteCincoVezes({print("Closure")})


// Closure com param e retorno

let criadorDeBoaTarde:(praQuem:String) -> String = {
    quem in return "Boa tarde \(quem)!"
}

criadorDeBoaTarde(praQuem: "Aline")
criadorDeBoaTarde(praQuem: "Luana")

func saudaçõesPraGeral( criador:(String)->String){
    
    let nomes = ["Aline", "Luana", "Bam"]
    for nome in nomes {
        let saudação = criador(nome)
        print(saudação)
    }
    
}

saudaçõesPraGeral(criadorDeBoaTarde)


// Closure da função soma
let soma:(Int, Int)->Int = { v1, v2 in
    return v1 + v2
}

soma(12,32)

func executaOperacao( v1:Int, _ v2:Int, operacao:(Int,Int)->Int) -> Int {
    return operacao(v1, v2)
}

executaOperacao(130, 8, operacao: soma)

// Quick fix: faça também subtração e multiplicação

let subtracao:(Int, Int)-> Int = { v1, v2 in
    return v1 - v2
}

// let subtracao:(Int, Int)-> Int = {  // equivalência - agora o map, reduce, foreach fazem sentido 🤓
//      return $0 - $1
//  }


let multiplicacao:(Int, Int) -> Int = { v1, v2 in
    return v1 * v2
}

executaOperacao(5, 4, operacao: subtracao)
executaOperacao(5, 4, operacao: multiplicacao)










