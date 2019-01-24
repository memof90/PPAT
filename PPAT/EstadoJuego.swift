//
//  EstadoJuego.swift
//  PPAT
//
//  Created by Memo Figueredo on 1/10/19.
//  Copyright © 2019 Memo Figueredo. All rights reserved.
//

import Foundation


enum EstadoJuego {
    case inicio
    case gana
    case pierde
    case empata
    
    var status: String {
        switch self {
        case .inicio:
            return "Piedra, Papel o Tijera"
        case .gana:
            return "Ganaste"
        case .pierde:
            return "Perdiste"
        case .empata:
            return "Es un empate"
        }
    }
}
