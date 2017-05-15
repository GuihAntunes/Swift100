//: Generics

func invertePontasVetorInteiros(_ vetor:[Int]) -> [Int] {
    
    // 1) Garantir que temos pontas
    guard let ultimo = vetor.last,
        let primeiro = vetor.first else{
            return vetor
    }
    
    // 2) Troca
    var novo = vetor
    novo[0] = ultimo
    novo[vetor.count - 1] = primeiro
    return novo

}

var nossoVetor = [1,2,3,4]
invertePontasVetorInteiros(nossoVetor)


// Mas, e se eu quiser também inverter vetores de Strings? UInt8, Int32
// Precisa criar uma função pra cada? Para isso utilizamos Generics

func invertePontas<T>(vetor:[T]) -> [T] {
    
    // 1) Garantir que temos pontas
    guard let ultimo = vetor.last,
        let primeiro = vetor.first else{
            return vetor
    }
    
    // 2) Troca
    var novo = vetor
    novo[0] = ultimo
    novo[vetor.count - 1] = primeiro
    return novo

}

invertePontas(vetor: [2.5, 1.2, 3.5])
invertePontas(vetor: ["a", "b", "c"])

// E quando preciso fazer operações?
// Por exemplo comparar valores?

func éIgual<T>(_ a:T, _ b:T) -> Bool where T:Equatable {
    return a == b
}

class Bandeira {
    var cores:[String] = []
}

éIgual("a", "b")
éIgual("a", "a")

éIgual(10, 20)
éIgual(20, 20)

// References

// https://www.raywenderlich.com/
// https://ijoshsmith.com/2014/07/05/custom-threading-operator-in-swift/
// https://get.fabric.io/
// https://github.com/apple/swift-evolution



























































