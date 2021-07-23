import UIKit
class Calculos {
    enum Operacion{
        case suma
        case resta
        case division
        case multiplicacion
        case raizCuadrada
    }
    func miCalculadora(num1 : Int, num2 : Int) -> String
    {
        guard num1 > 0  else {
            return "el numero no puede ser negativo"
        }
        guard num2 > 1 else {
            return "el numero no puede cero o menor a este"
        }
      
        var resultado : Int
        let operacion = Operacion.multiplicacion
        switch operacion {
        case .suma:
            resultado =  num1 + num2
            return "el resultado de la suma es \(resultado)"
            break
        case .resta:
            resultado =  num1 - num2
            return "el resultado de la resta es \(resultado)"
            break
        case .multiplicacion:
            resultado =  num1 * num2
            return "La multiplicacion es \(resultado)"
            break
        case .division:
            resultado = num1 / num2
            return "La division es \(resultado)"
            break
        case .raizCuadrada:
            let res: Double = sqrt(Double(num1))
            return "La raiz cuadrada de \(num1) es \(res)"
        default:
            break
        }
        
        return "el resultado de la operacion es \(resultado)"
    }

}

let miSuma = Calculos()
var res = miSuma.miCalculadora(num1: 8, num2: 4)
print(res)

