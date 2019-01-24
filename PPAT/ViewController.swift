//
//  ViewController.swift
//  PPAT
//
//  Created by Memo Figueredo on 1/10/19.
//  Copyright © 2019 Memo Figueredo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //conectores
    
    //turno computadora label
    @IBOutlet weak var turnoComputadoraLabel: UILabel!
    
    //status turno
    @IBOutlet weak var labelStatus: UILabel!
    
    //boton piedra
    @IBOutlet weak var piedraBoton: UIButton!
    // boton papel
    @IBOutlet weak var papelBoton: UIButton!
    //boton tijera
    @IBOutlet weak var tijeraBoton: UIButton!
    //boton play
    @IBOutlet weak var playBoton: UIButton!
    
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        
        return .lightContent
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actualiza(paraEstadoJuego: .inicio)
    }
 
    //acciones
    
    //boton piedra
    @IBAction func playRoca(_ sender: UIButton) {
        play(.piedra)
    }
    //boton papel
    @IBAction func playPapel(_ sender: UIButton) {
        play(.papel)
    }
    
    //boton tijera
    @IBAction func playTijera(_ sender: UIButton) {
        play(.tijera)
    }
    
    
    //función de jugar
    func play(_ jugadorSeñal: Señas){
        
        let señasOpente = aleatorioSeña()
        let estadosJuego = jugadorSeñal.estadoJuego(versusSeñas: señasOpente)
        actualiza(paraEstadoJuego: estadosJuego)
        
      turnoComputadoraLabel.text = señasOpente.valorTexto
        
        switch jugadorSeñal {
        case .piedra:
            break
        case .papel:
            break
        case .tijera:
            break
        }
    }
    
    
    //
    
    @IBAction func playListo(_ sender: Any) {
        actualiza(paraEstadoJuego: .inicio)
    }
    
    func actualiza(paraEstadoJuego estadosJuego: EstadoJuego){
        
        labelStatus.text = estadosJuego.status
        
        switch estadosJuego {
        case .inicio:
            view.backgroundColor = Colores.grisBrillante
            turnoComputadoraLabel.text = "🕹"
            
            
        case .gana:
            view.backgroundColor = Colores.ladrillo
        case .pierde:
            view.backgroundColor = Colores.rosado
        case .empata:
            view.backgroundColor = Colores.grisOscuro
        }
    }
}

