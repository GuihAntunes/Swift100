// : Error Handling
// No Swift temos estruturas para permitir o tratamento de erros em tempo de execução

// Primeiro passo: listar os possíveis erros
enum FalhaNaImpressão : ErrorType {
    
    case FaltouPapel
    case FaltouTinta
}

class Impressora {
    
    var qtdPapel:Int      = 0
    var nivelTinta:Double = 0.0
    
    // throws indica que essa função pode gerar um error
    func imprimir(texto:String) throws {
        
        guard qtdPapel > 0 else{
            throw FalhaNaImpressão.FaltouPapel
        }
        
        guard nivelTinta > 0 else{
            throw FalhaNaImpressão.FaltouTinta
        }
        
        print("Imprimindo ... \(texto)")
        
        qtdPapel -= 1
        nivelTinta -= 0.01
    }
    
    
}

// Segundo passo: Agora vamos tratar o erro


let minhaImpressora = Impressora()

func tentaImprimir(texto:String) -> Bool {
    
    do{
        try minhaImpressora.imprimir(texto)
        return true
    } catch FalhaNaImpressão.FaltouPapel {
        print("Precisava de papel! Vou reabastecer!")
        minhaImpressora.qtdPapel += 10
        return tentaImprimir(texto)
    
    }catch FalhaNaImpressão.FaltouTinta {
        print("Está sem tinta! Vamos trocar o cartucho!")
        minhaImpressora.nivelTinta = 1.0
        return tentaImprimir(texto)
    }catch {
        print("Erro ao imprimir")
        return false
    }
}

tentaImprimir("Teste de impressão")

// Podemos utilizar try? para receber valores de função com throws. Nesse caso, quando há exception, o retorno é nulo

enum MathematicalError : ErrorType {
    case DividindoPorZero
}


func divide(a:Int, _ b:Int) throws -> Int {
    
    if b == 0 {
        throw MathematicalError.DividindoPorZero
    }else{
        return a/b
    }
    
}

let divisãoUm   = try? divide(10, 2)
let divisãoDois = try? divide(10, 0)










