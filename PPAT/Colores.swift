//
//  Colores.swift
//  PPAT
//
//  Created by Memo Figueredo on 1/10/19.
//  Copyright © 2019 Memo Figueredo. All rights reserved.
//

import UIKit

class Colores: NSObject {

    private struct Cache {
        
        static let purple: UIColor = UIColor(red: 0.627, green: 0.506, blue: 0.714, alpha: 1.000)
        static let azul: UIColor = UIColor(red: 0.310, green: 0.427, blue: 0.627, alpha: 1.000)
        static let azulVerde: UIColor = UIColor(red: 0.549, green: 0.718, blue: 0.733, alpha: 1.000)
        static let rosado: UIColor = UIColor(red: 0.784, green: 0.290, blue: 0.447, alpha: 1.000)
        static let ladrillo: UIColor = UIColor(red: 0.851, green: 0.424, blue: 0.412, alpha: 1.000)
        static let grisOscuro: UIColor = UIColor(red: 0.475, green: 0.475, blue: 0.475, alpha: 1.000)
        static let grisBrillante: UIColor = UIColor(red: 0.633, green: 0.633, blue: 0.633, alpha: 1.000)
    }
    
    public class var purple: UIColor {return Cache.purple}
    public class var azul: UIColor{return Cache.azul}
    public class var azulVerde: UIColor{return Cache.azulVerde}
    public class var rosado: UIColor{return Cache.rosado}
    public class var ladrillo: UIColor{return Cache.ladrillo}
    public class var grisOscuro: UIColor{return Cache.grisOscuro}
    public class var grisBrillante: UIColor{return Cache.grisBrillante}

}
