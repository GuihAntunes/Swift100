//: Tuplas

var empresa = ("Quaddro", "3171-3080", "quaddro.com.br")
empresa.0

var pessoa:(String, Int, Double) = ("João", 28, 1.78)

let carro:(nome:String, ano:Int) = ("Fiat 147", 1996)
carro.ano

// typealias define um apelido para um tipo novo
typealias NomeCompleto = (nome:String, sobrenome:String)

let guih:NomeCompleto = ("Guilherme", "Antunes")
guih.sobrenome

// Quick Fix
// 1.Faça uma tupla de endereço, com rua, numero, cidade
// 2.Faça uma tupla CPF, com número e dígito verificador
// 3.😈 Faça uma tupla Pessoa, que nome completo, endereço e CPF

typealias Endereço = (rua:String, numero:Int, cidade:String)
let casa:Endereço = ("Rua Baião Parente", 396, "São Paulo")

typealias Cpf = (numero:Int, dv:Int)
// underline no meio de um int são ignorados
let cpf:Cpf = (427_807_198,18)

typealias Pessoa = (endereço:Endereço, nome:NomeCompleto, cpf:Cpf)
let pessoa2:Pessoa = (casa,guih,cpf)

print("Endereço:", pessoa2.endereço.rua,",", pessoa2.endereço.numero, "-", pessoa2.endereço.cidade, "\nCPF:", pessoa2.cpf.numero, "-", pessoa2.cpf.dv, "\nNome:", pessoa2.nome.nome, pessoa2.nome.sobrenome)



