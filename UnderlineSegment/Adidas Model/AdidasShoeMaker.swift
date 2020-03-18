//
//  AdidasShoeMaker.swift
//  UnderlineSegment
//
//  Created by Dionte Silmon on 3/7/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import Foundation


struct AdidasShoeMaker {
    
    var adidasShoes = [AdidasShoeModel]()
    
    init() {
        
        var shoe: AdidasShoeModel
        
        shoe = AdidasShoeModel(shoeName: "Adidas Yeezy Boost 350 V2 Static Black", releaseDate: "06/06/2019", shoeImageName: "blackBoostV2", info: "The adidas Yeezy Boost 350 V2 lives up to its cult appeal through evolved design elements and advanced technology. Released June 2019, this ‘Black Non-Reflective' edition's re-engineered Primeknit bootie sees futuristic updates including a translucent side stripe and bold stitching on the heel pull. Integrated lacing customizes the fit while a translucent black Boost-equipped midsole complements the covert feel.", favorites: "643", price: "$220")
        adidasShoes.append(shoe)
        
        shoe = AdidasShoeModel(shoeName: "Adidas Yeezy Boost 350 V2 Clay", releaseDate: "03/30/2019", shoeImageName: "boostV2Clay", info: "When the adidas Yeezy Boost 350 V2 'Clay' debuted in late March, 2019, it marked the first time a 350 would be released in adult, kids and infant sizes. The kids'-sized Yeezy Boost 350 V2 Kids 'Clay' maintains the same features as the adult version. The Primeknit upper comes in an orange-brown hue, with contrast patterns and a horizontal stripe. The bright orange heel tab adds a bit of pop, while the translucent midsole and rubber outsole finish out the look.", favorites: "432", price: "$220")
        adidasShoes.append(shoe)
        
        shoe = AdidasShoeModel(shoeName: "Adidas Yeezy Boost 350 V2 Beluga 2.0", releaseDate: "11/25/2017", shoeImageName: "boostV2Beluga2.0", info: "With its name coming from the colorway similarities found on the first Yeezy Boost 350 V2, the Yeezy Boost 350 V2 'Beluga 2.0' dropped on November 25, 2017. It was quickly restocked on November 30th after selling out. The shoe features a muted grey stripe on the laterals instead of the bright orange stripe found on the original ‘Beluga’ sneaker. The Yeezy Boost 350 V2 'Beluga 2.0' also features a heel pull tab with orange stitching and orange ‘SPLY-350’ lettering in reverse on the laterals.", favorites: "209", price: "$220")
        adidasShoes.append(shoe)
        
        shoe = AdidasShoeModel(shoeName: "Adidas Yeezy Boost 350 V2 Blue Tint", releaseDate: "12/16/2017", shoeImageName: "boostV2BlueTint", info: "The 5th Yeezy to drop since November 2017 — Yeezy Boost 350 V2 'Semi Frozen Yellow' and ‘Beluga 2.0,’ Yeezy Powerphase Calabasas, and the Yeezy 500 ‘Desert Rat’ — the Yeezy Boost 350 V2 'Blue Tint' was dropped on December 16th, 2017. The sneaker features a neutral white and grey upper with a red ‘SPLY-350’ text on the side in reverse. The shoe also comes with a heel tab, blue tint inner lining, and paste blue laces.", favorites: "358", price: "$220")
        adidasShoes.append(shoe)
        
        shoe = AdidasShoeModel(shoeName: "Adidas Yeezy Boost 350 V2 Black Red", releaseDate: "02/11/2017", shoeImageName: "boostV2Bred", info: "First released on February 11, 2017, the Yeezy Boost 350 V2 ‘Bred’ combines a black Primeknit upper with red SPLY 350 branding, and a translucent black midsole housing full-length Boost. This colorway of Yeezy Boost 350 V2 remains one of the most coveted Yeezy's in existence.", favorites: "1,593", price: "$220")
        adidasShoes.append(shoe)
        
        shoe = AdidasShoeModel(shoeName: "Adidas Yeezy Boost V2 Zebra", releaseDate: "02/25/2017", shoeImageName: "boostV2Zebra", info: "Released on February 25, 2017, the Yeezy Boost 350 V2 ‘Zebra’ combines a white/core black Primeknit upper with red SPLY 350 branding and a translucent white midsole housing full-length Boost. Sold exclusively at adidas.com, Yeezy Supply, and select adidas flagship stores, the ‘Zebra’ sold out instantly but was restocked on June 24th, 2017. Another restock of the ‘Zebra’ arrived November 16, 2018, with more pairs hitting the marketplace and delivering on Kanye’s promise of Yeezy’s being more accessible to anyone that wanted them.", favorites: "941", price: "$220")
        adidasShoes.append(shoe)
        
        shoe = AdidasShoeModel(shoeName: "Adidas Yeezy Boost V2 Tail Light", releaseDate: "02/22/2020", shoeImageName: "boostV2TailLight", info: "The Yeezy Boost 350 V2 'Tail Light' showcases a pop of bright orange at the stitched textile heel tab, along with a less concentrated shade of the same hue on the signature post-dyed monofilament side stripe. The rest of the upper is constructed from light grey Primeknit in a minimalist one-piece build, complete with a distinctive center stitch running down the vamp. A semi-translucent rubber midsole houses adidas Boost cushioning for a smooth ride. The 'Tail Light' colorway is only available in Europe, Russia and Ukraine.", favorites: "183", price: "$220")
        adidasShoes.append(shoe)
    }
    
}
