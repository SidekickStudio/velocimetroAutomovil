//: Playground - noun: a place where people can play

import UIKit

/*
 By: José Luis Castro
 Site: Sidekick.pe
 */

//====================================
// --- Velocímetro de un automóvil
//====================================

//--- Enum
enum Velocidades:Int{
    case
        apagado = 0, //0
        velocidadBaja = 20, //20km x h
        velocidadMedia = 50, //50km x h
        velocidadAlta = 120 //120km x h
    
    init(velocidadInicial:Velocidades){
        self = velocidadInicial
    }
    
    var description : String {
        switch self {
        case .apagado: return "Apagado";
        case .velocidadBaja: return "Velocidad Baja";
        case .velocidadMedia: return "Velocidad Media";
        case .velocidadAlta: return "Velocidad Alta";
        }
    }
}

//--- Class
class Auto{
    var velocidad:Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: .apagado)
    }
    
    func cambioDeVelocidad() -> (actual:Int, velocidadEnCadena:String){
        let currentVelocidad = self.velocidad
        
        switch self.velocidad {
        case .apagado:        self.velocidad = .velocidadBaja
        case .velocidadBaja:  self.velocidad = .velocidadMedia
        case .velocidadMedia: self.velocidad = .velocidadAlta
        case .velocidadAlta:  self.velocidad = .apagado
        }
        
        return (currentVelocidad.rawValue, currentVelocidad.description)
    }
}

//
var auto = Auto()

// tupla - resultado
//var resultado:(actual: Int, velocidadEnCadena: String)

// para la muestra - que se repita 20 veces
for index in 1...20 {
    let resultado = auto.cambioDeVelocidad()
    print("\(resultado.actual), \(resultado.velocidadEnCadena)")
}
print("... etc.") // :D
