//: Classes
// Classes são a junção de variáveis e métodos, criando um molde de que se pode tirar réplicas indefinidamente
// Exemplo: um gato tem cor, mike é branco
//              classe     |  objeto da classe instanciado

class Anotação {
    var nota:String = ""
    var dia:Int     = 0
    var mes:Int     = 0
    var ano:Int     = 0
    
    init(nota:String, dia:Int, mes:Int, ano:Int) {
        self.dia = dia
        self.mes = mes
        self.ano = ano
        self.nota = nota
    }
    
    func descrição() -> String {
        return "\(self.dia)/\(self.mes)/\(ano): \(nota)"
    }
    
    func duplicar(novo:String) -> Anotação {
        return Anotação(nota: novo, dia: self.dia, mes: self.mes, ano: self.ano)
    }
    
}

let natal = Anotação(nota: "Lembrar de comprar presentes!", dia: 25, mes: 12, ano: 2016)

//print(natal.nota)
//print(natal.descrição())

let feriado = Anotação(nota: "Independência", dia: 7, mes: 9, ano: 2016)

//print(feriado.descrição())

var diaDoVoo = natal.duplicar("Vôo agendado para às 15h ✈️")

// Variáveis com tipos sendo Classes
// Atenção: Nomes de classes sempre com primeira maiúscula

class Agenda {
    let dono:String
    var anotações:[Anotação]
    
    init(dono: String){
        self.dono = dono
        self.anotações = []
    }
    
    func notasDoMes(mes:Int, ano:Int) {
        anotações.forEach {
            if $0.ano == ano && $0.mes == mes {
                print($0.descrição())
            }
        }
    }
}

let minhaAgenda = Agenda(dono: "Guih")
let diaMundialDaPaz = Anotação(nota: "Dia Mundial da Paz", dia: 01, mes: 01, ano: 2017)
let anoNovo = Anotação(nota: "Ano Novo", dia: 31, mes: 12, ano: 2016)
let carnaval = Anotação(nota: "Carnaval", dia: 2, mes: 2, ano: 2016)
let feriadoX = Anotação(nota: "X", dia: 01, mes: 12, ano: 2016)
let feriadoY = Anotação(nota: "Y", dia: 01, mes: 12, ano: 2017)
minhaAgenda.anotações.append(natal)
minhaAgenda.anotações.append(feriado)
minhaAgenda.anotações.append(carnaval)
minhaAgenda.anotações.append(anoNovo)
minhaAgenda.anotações.append(diaMundialDaPaz)
minhaAgenda.anotações.append(feriadoX)
minhaAgenda.anotações.append(feriadoY)

// Quick fix: faça um método na agenda que mostre todas
// as anotações de um dado mês
// exemplo: minhaAgenda.notasDoMes(12,2016)

minhaAgenda.notasDoMes(12, ano: 2016)














































