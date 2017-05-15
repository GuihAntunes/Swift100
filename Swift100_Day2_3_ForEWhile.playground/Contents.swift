//: For e While

var almocoSemanal = Array(count: 7, repeatedValue: "Salada")

// Utilizamos for in para investigar cada item do vetor

almocoSemanal[2] = "Macarronada"
for almoco in almocoSemanal {
    print("Hoje almocei \(almoco)")
}

// Acesso e exibindo a posição
for(indice, almoco) in almocoSemanal.enumerate() {
    print("Dia \(indice) teve \(almoco)")
}


// for com intervalos

for numero in (0..<10) {
    print("Número é \(numero)")
}

// for com intervalos variáveis
let limite = 5
for número in 0...limite {
    print(número)
}

for numero in Array(0...limite).reverse(){
    print("Índice invertido \(numero)")
}


// Mini desafio
// Escrever um nome ao contrário
// let nome = "Guih" -> hiuG

let nome = "Guih"
var invert = ""

for letra in nome.characters.reverse() {
    invert += "\(letra)"
}

print("\(nome) -> invertido é \(invert)")

// While
// similar ao for, para quando a condição de 'parada' não é conhecida
var valor = 0
while valor < 5 {
    valor += 1
    print("Valor > \(valor)")
}

// Mesmo que While, mas executa uma vez, ao menos, antes de verificar a condição
repeat {
    valor -= 1
    print("Valor = \(valor)")
} while valor > 0


// Recap

// Contar de 1 a 10, incluindo o 10

var numero = 1

while numero <= 10 {
    print(numero)
    numero += 1
}

// Contar número pares de 1 até 10
numero = 1

while numero <= 10 {
    if numero % 2 == 0 {
        print(numero)
    }
    numero += 1
}

// Contar regressivamente de 10 até 0
numero = 10
repeat{
    print(numero)
    numero -= 1
} while numero >= 0

// Contar regressivamente os ímpares de 10 até -10
numero = 10
repeat{
    if numero % 2 != 0 {
        print(numero)
    }
    numero -= 1
} while numero >= -10

// Inverter um texto
print(String("1 texto".characters.reverse()))


// Mostrar somente as vogais de um texto

var texto = "um texto"

for char in texto.characters {
    switch char {
        case "a","e","i","o","u","A","E","I","O","U":
            print(char, terminator:"-")
    default: break
    }
}





