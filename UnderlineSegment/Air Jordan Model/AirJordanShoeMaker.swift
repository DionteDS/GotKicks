//
//  AirJordanShoeMaker.swift
//  UnderlineSegment
//
//  Created by Dionte Silmon on 3/7/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import Foundation

struct AirJordanShoeMaker {
    
    var ajShoes = [AirJordanShoeModel]()
    
    init() {
        
        var shoe: AirJordanShoeModel
        
        shoe = AirJordanShoeModel(shoeName: "Air Jordan 4 Retro White Cement", releaseDate: "02/13/16", shoeImage: "cement4", info: "The Air Jordan 4 Retro OG 'Cement’ 2016 was one of the original four colorways released in 1989. The sneaker features the original White, Fire Red, Black, and Tech Grey colorway, with the speckled Cement Grey accents that give the sneaker its nickname. Released during the 2016 NBA All-Star weekend in Toronto, the sneaker was also retro’d in 1999 and 2012. The 1999 and 2016 retros are the only models that feature the ‘Nike Air’ branding on the heel, just like the 1989 OG sneakers.", favorites: "350", price: "$220")
        ajShoes.append(shoe)
        
        shoe = AirJordanShoeModel(shoeName: "Air Jordan 1 Retro High Bred Toe", releaseDate: "02/24/2018", shoeImage: "aj1Bred", info: "Arriving in stores in February 2018, the Air Jordan 1 Retro High OG ‘Bred Toe’ is a new spin on a classic design. The Chicago Bulls-inspired colorway combines elements of the ‘Bred’ and ‘Black Toe’ editions of the Air Jordan 1, executed on a premium leather build. The high-top features a black Swoosh on the white quarter panel, along with contrasting pops of red on the toe box, heel, collar, and outsole. The shoe stays true to its OG 1985 roots with Nike Air branding on the tongue tag and sockliner.", favorites: "764", price: "$160")
        ajShoes.append(shoe)
        
        shoe = AirJordanShoeModel(shoeName: "Air Jordan 4 Retro What The", releaseDate: "11/23/2019", shoeImage: "aj4WhatThe", info: "Released in November 2019, the Air Jordan 4 Retro SE 'What The 4' takes the original four colorways of the Air Jordan 4 and combines them in a 'What The' format that has been seen on several Nike silhouettes. This original color palette is realized on the entire shoe, with the beloved Varsity Red, Cement Grey and Military Blue that Jordan 4 fans recognize and love. The discordant aesthetic works across the leather uppers, signature lacing wings and Jumpman logos on the tongue and heel to create something familiar yet new.", favorites: "153", price: "$200")
        ajShoes.append(shoe)
        
        shoe = AirJordanShoeModel(shoeName: "Air Jordan 3 Retro Black Cement", releaseDate: "02/17/2018", shoeImage: "aj3BlackCement", info: "The Air Jordan 3 was the first of many for Michael Jordan and Tinker Hatfield. It was the first time they would work together on the signature shoe, it was the first time the elephant print made an appearance on a shoe, and it was the first time the “Jumpman” logo adorned the tongue with the classic “NIKE AIR” stamped on the heel. The Black/Cement Air Jordan 3 Retro OG comes back in its original form. Featuring black tumbled and smooth leather uppers and all the distinct details we remember thirty years later.", favorites: "211", price: "$200")
        ajShoes.append(shoe)
        
        shoe = AirJordanShoeModel(shoeName: "Air Jordan 6 Retro Infrared", releaseDate: "02/16/2019", shoeImage: "aj6Infrared", info: "The 2019 edition of the Air Jordan 6 Retro ‘Infrared’ is true to the original colorway, which Michael Jordan wore when he captured his first NBA title. Dressed primarily in black nubuck with a reflective 3M layer underneath, the mid-top features Infrared accents on the midsole, heel tab and lace lock. Nike Air branding adorns the heel and sockliner, an OG detail last seen on the 2000 retro.", favorites: "439", price: "$200")
        ajShoes.append(shoe)
        
        shoe = AirJordanShoeModel(shoeName: "Air Jordan 7 Retro Olympic", releaseDate: "07/21/2012", shoeImage: "aj7olympic", info: "The Nike Air Jordan 7 Retro 'Olympic' 2012 is a retro re-release of the shoe worn by Michael Jordan en route to a gold medal with the Dream Team at the 1992 Olympic Games. The design features a white and metallic silver upper with Obsidian, metallic gold, and True Red accents. Released in July 2012, the sneaker also includes Jordan's Olympic jersey number '9' on the heel. Originally retro-released in 2004, the 'Olympic' also dropped in a 2016 'Tinker Alternate' colorway combining a white/navy upper with a speckled midsole.", favorites: "894", price: "$160")
        ajShoes.append(shoe)
        
        shoe = AirJordanShoeModel(shoeName: "Air Jordan 5 Retro Black Tongue", releaseDate: "08/31/2013", shoeImage: "fireRed5", info: "The Nike Air Jordan 5 Retro 'Fire Red' Black Tongue features a white leather upper, black tongue, Fire Red accents, and an embroidered number '23' at the ankle. The sneaker also includes a red midsole, black shark teeth, and a translucent outsole. Released in August 2013, the 'Fire Red' Black Tongue followed a January 2013 version featuring a 3M reflective tongue and alternate midsole color blocking.", favorites: "560", price: "$160")
        ajShoes.append(shoe)
        
        shoe = AirJordanShoeModel(shoeName: "Air Jordan 11 Retro Playoffs Bred", releaseDate: "12/14/2019", shoeImage: "aj11Bred", info: "The Air Jordan 11 Retro 'Bred' 2019 brings back an original colorway initially debuted in 1995. The Tinker Hatfield-designed silhouette features Chicago Bulls colors, with black mesh on the upper sitting atop shiny black patent leather. A white midsole melds nicely with a translucent Varsity Red outsole, and is the same colorway that Michael Jordan wore during the 1996 NBA championship playoff run. This retro was distributed in December 2019 with OG detailing, including high-cut patent leather, signature Jumpman branding and MJ's number 23 stamped on the heel.", favorites: "1,320", price: "$220")
        ajShoes.append(shoe)
        
        shoe = AirJordanShoeModel(shoeName: "Air Jordan 8 Retro Aqua", releaseDate: "11/27/2015", shoeImage: "aj8Aqua", info: "The Jordan 8 ‘Aqua’ was one of three OG colorways released in 1993. The sneaker made its first and only on-court appearance at the 1993 All-Star game where Jordan dropped 30 points. Prior to its Black Friday release as part of Jordan’s 2015 Holiday Collection (which included two other colorways: the Air Jordan 8 ‘Chrome’ and Air Jordan 8 ‘Three Times A Charm’) the ‘Aqua’ was only retroed one other time, in 2007. As part of Nike’s ‘Remastered’ program the sneaker includes premium materials and authentic details.", favorites: "110", price: "$190")
        ajShoes.append(shoe)
    }
    
}
