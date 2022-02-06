//
//  Yemek.swift
//  YemekTarifiApp
//
//  Created by Huseyin Atik on 6.02.2022.
//

import Foundation
import UIKit

class Yemek
{
    var isim:String
    var aciklama:String
    var gorsel:UIImage
    
    
    init(isim:String,aciklama:String,gorsel:UIImage)
    {
        self.isim=isim
        self.aciklama=aciklama
        self.gorsel=gorsel
    }
    
}
