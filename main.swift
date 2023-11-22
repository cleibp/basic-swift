import Foundation

let nome = "Cleiton"
let idade = 20
let sexo: Character = "M"
let peso = 70.5
let ativo = true

var val1: Int
var val2: Int
var adicao: Int
var subtracao: Int
var multiplicacao: Int
var divisao: Double
var modulo: Int

var idadeTernario: Int
var idadeTer: String

var idadeIF: Int

var dia: Int

var a = 0

var b = 0

var m = 0
var n = 0

let PI = 3.14159265

// Comentário de uma linha

/*
 * Comentário
 * de varias linhas
 */

// ESCREVER NA TELA
print("#### ESCREVER NA TELA ####")
print("Olá Mundo")
print("")

// VARIÁVEIS
print("### VARIÁVEIS E TIPOS BÁSICOS ###")
print("Nome: \(nome)")
print("Idade: \(idade)")
print("Sexo: \(sexo)")
print("Peso: \(peso)")
print("Ativo: \(ativo)")
print("")

// CONSTANTE
print("### CONSTANTE ###")
print("PI: \(PI)")
print("")

// OPERACOES
print("#### OPERACOES ####")
print("Informe o valor 1: ", terminator: "")
val1 = Int(readLine()!)!

print("Informe o valor 2: ", terminator: "")
val2 = Int(readLine()!)!

adicao = val1 + val2 // Pode usar: (+, -, *, /, %)
subtracao = val1 - val2
multiplicacao = val1 * val2
divisao = Double(val1) / Double(val2)
modulo = val1 % val2
print("Soma: \(adicao)")
print("Subtracao: \(subtracao)")
print("Multiplicacao: \(multiplicacao)")
print("Divisao: \(divisao)")
print("Modulo: \(modulo)")
print("")

// TERNARIO
print("### TERNARIO ###")
print("Digite um número: ", terminator: "")
idadeTernario = Int(readLine()!)!
idadeTer = idadeTernario >= 18 ? "Maior de idade" : "Menor de idade"
print(idadeTer)
print("")

// IF ELSE IF ELSE
print("### IF ELSE IF ELSE ###")
print("Informe a idade: ", terminator: "")
idadeIF = Int(readLine()!)!
if idadeIF < 12 {
    print("CRIANCA")
} else if idadeIF >= 12 && idadeIF < 18 {
    print("ADOLESCENTE")
} else {
    print("ADULTO")
}
print("")

// CASE
print("### CASE ###")
print("Informe um numero 1 - 7 para semana: ", terminator: "")
dia = Int(readLine()!)!

switch dia {
case 1:
    print("Domingo")
case 2:
    print("Segunda")
case 3:
    print("Terça")
case 4:
    print("Quarta")
case 5:
    print("Quinta")
case 6:
    print("Sexta")
case 7:
    print("Sabado")
default:
    print("Valor nao existente")
}
print("")

// REPEAT
print("### REPEAT ###")
print("Não tem REPEAT")
print("")

// DO WHILE
print("### DO WHILE ###")
repeat {
    print(a)
    a = a + 1
} while a < 10
print("")

// WHILE
print("### WHILE ###")
while b < 10 {
    print(b)
    b = b + 1
}
print("")

// FOR
print("### FOR ###")
for c in 0...10 {
    print(c)
}
print("")

// ARRAY
print("### ARRAY ###")
let numbers = [10, 20, 30, 40]

for number in numbers {
    print(number)
}
print("")

// MATRIZ
print("### MATRIZ ###")
var matriz = [[Int]]()

// Inicialização da matriz
for i in 0..<3 {
    matriz.append([Int]())
    for j in 0..<3 {
        matriz[i].append(i * 3 + j + 1)
    }
}

// Acesso aos elementos da matriz
print("Elementos da matriz:")
for row in matriz {
    let rowString = row.map { String($0) }.joined(separator: " ")
    print(rowString)
}
print("")

// FUNCAO
print("### FUNCAO ###")
print("Digite o valor 1: ", terminator: "")
m = Int(readLine()!)!

print("Digite o valor 2: ", terminator: "")
n = Int(readLine()!)!

func soma(_ a: Int, _ b: Int) -> Int {
    return a + b
}

let resultado = soma(m, n)
print("A soma de \(m) e \(n) é igual a \(resultado)")

print("")

// PROCEDURE
print("### PROCEDURE ###")
print("Não tem PROCEDURE")
print("")

// PONTEIRO
print("### PONTEIRO ###\n");
print("Não tem PONTEIRO \n");
print(" Não é necessário liberar memória manualmente, como em C ou C++. A variável será automaticamente coletada pelo coletor de lixo quando não estiver mais em uso. \n");
print("\n");

// TRY CATCH
print("### TRY CATCH ###\n");
print("Informe o valor 1 para o dividendo: ", terminator: "")
let numero1 = Int(readLine()!)!

print("Informe o valor 2 para o divisor: ", terminator: "")
let numero2 = Int(readLine()!)!

do {
    if numero2 == 0 {
        throw NSError(domain: "Divisão por zero não é permitida!", code: 1, userInfo: nil)
    }

    let resultado = numero1 / numero2
    print(String(format: "Resultado da divisão: %.2f", resultado))
} catch {
    print("Ocorreu uma exceção: \(error.localizedDescription)")
}
print("\n");

// ENUM
print("### ENUM ###\n");
enum Cor {
    case Vermelho, Verde, Azul, Amarelo, Laranja
}

let minhaCor: Cor = .Azul

switch minhaCor {
case .Vermelho:
    print("Minha cor favorita é vermelho.")
case .Verde:
    print("Minha cor favorita é verde.")
case .Azul:
    print("Minha cor favorita é azul.")
case .Amarelo:
    print("Minha cor favorita é amarelo.")
case .Laranja:
    print("Minha cor favorita é laranja.")
}
