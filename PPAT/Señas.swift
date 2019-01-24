//
//  Señas.swift
//  PPAT
//
//  Created by Memo Figueredo on 1/10/19.
//  Copyright © 2019 Memo Figueredo. All rights reserved.
//

import Foundation
import GameplayKit


//función aleatoria heredada por el framework GamePlayKit

let turnoAleatorio = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func aleatorioSeña() -> Señas {
    let seña = turnoAleatorio.nextInt()
    
    if seña == 0 {
        return .piedra
    } else if seña == 1 {
        return .papel
    } else {
        return .tijera
    }
}

    


// señas como se comporta el juego
enum Señas {
    case piedra
    case papel
    case tijera
    
    // permite establecer una relación entre señas y el estado del juego medienta self
    func estadoJuego(versusSeñas: Señas) -> EstadoJuego{
        
        if self == versusSeñas {
            return .empata
        }
        
        //comportamiento del fucnionamiento del juego
        switch self {
        case .piedra:
            if versusSeñas == .tijera {
                return .gana
            }
            
        case .papel:
            if versusSeñas == .piedra {
                return .gana
            }
            
        case .tijera:
            if versusSeñas == .papel {
                return .gana
            }
        }
        
        return .pierde
    }
    
    // establece el texto saliente de la piedra, papel o tijera
    var valorTexto: String {
        
        switch self {
        case .piedra: return "👊"
        case .tijera: return "✌️"
        case .papel: return "🤚🏻"
        }
    }
}
