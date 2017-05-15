//: Switch


let numero = 101

switch numero {
case 1:
    print("Número é 'um'!")
    // 'break' não é obrigatório
case 3:
    fallthrough // força a executar o próximo "case"
case 5:
    print("Número ímpar!")
case 2,4,6,8:
    print("Número par")
case 10 ..< 30:
    print("Número entre 10 e 30, mas não o 30")
case 30 ... 100:
    print("Número entre 30 e 100, com o 100 incluso")
default:
    // também poderia ser somente um 'break'
    print("Um número não investigado")
}


// Quick fix
// Faça um switch que diga se uma constante Character é vogal

let letra:Character = "a"

// Convertendo para lower:
//let A:Character = "A"
//String(A).lowercaseString

switch letra{
case "a","e","i","o","u","A","E","I","O","U":
    print("É vogal!")
default:
    print("Não é vogal!")
}


let ponto = (0,2)

switch ponto{
case (0,0):
    print("Estou na origem!")
case (0,_):
    print("Estou no eixo Y")
case (_,0):
    print("Estou no eixo X")
case (-2...2,-2...2):
    print("Dentro da caixa 2x2")
default:
    print("Ponto no gráfico")
}


// Por tipo de objeto
let valor:Any = 3

switch valor{
// se eu conseguir criar uma constante 's' a partir da variável 'valor', execute
case let s as String:
    print("Sou um texto: \(s)")
case let d as Int:
    print("Sou um número: \(d)")
default:
    print("What the hell? 😱")
}


let dinheiros:Any = 0.0

switch dinheiros {
// caso eu consiga criar uma constante 'd' a partir de 'dinheiros'e onde 'd' seja maior que 100, execute
case let d as Double where d > 100:
    print("Temos muitos dinheiros!")
case let d as Double where d >= 0:
    print(":ue: 💸")
case let d as Double where d < 0:
    print("Ops, estamos no vermelho 📉")
default:
    print("Denero? Oi?")
}


























