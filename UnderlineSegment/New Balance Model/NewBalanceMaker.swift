//
//  NewBalanceMaker.swift
//  UnderlineSegment
//
//  Created by Dionte Silmon on 3/9/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import Foundation


struct NewBalanceMaker {
    
    var newBalanceShoes = [NewBalanceModel]()
    
    init() {
        
        var shoe: NewBalanceModel
        
        shoe = NewBalanceModel(shoeName: "New Balance 997S No Bad Days", releaseDate: "09/28/19", shoeImageName: "noBadDays997s", info: "A follow-up to their 'No Days Off' release in September 2019, the Bodega x New Balance 997S 'No Bad Days' sneaker champions both positivity and experimental design. Leather, embossed neoprene and mesh is pulled together for the upper with distressed suede and TPU accents. Revamped branding and a graphic-printed insole cap off the key features. A laminate heel counter, dual ABZORB and Encap midsole tech and a rubber outsole are maintained.", favorites: "580", price: "$160")
        newBalanceShoes.append(shoe)
        
        shoe = NewBalanceModel(shoeName: "New Balance 997s Multi-Color", releaseDate: "03/05/2020", shoeImageName: "997sMultiColor", info: "The “Multi-Color” treatment arrives heavily throughout the base layers as a dichotomy of warm and cool tones are utilized. Sunshine yellows and oranges don the toe box meshes, while cooler royal blues overlay the sock liners and “N” logos and retro greens employ the tongues/rear paneling. Furthermore, the outsoles are painted with a gum-colored finish.", favorites: "321", price: "$120")
        newBalanceShoes.append(shoe)
        
        shoe = NewBalanceModel(shoeName: "New Balance 997s Kith nonnative", releaseDate: "11/21/2018", shoeImageName: "997sKith", info: "The KITH x nonnative x 997S ‘Dune’ is one of three New Balance collaborations that released in November 2018. Taking inspiration from the 997.5 ‘Dune,’ launched jointly by New Balance and nonnative in 2011, this pair features a mesh and suede upper in varying shades of tan. Contrasting pops of metallic silver and blue are used on the unique triple-stacked ‘N’ logo.", favorites: "197", price: "$150")
        newBalanceShoes.append(shoe)
        
        shoe = NewBalanceModel(shoeName: "New Balance 997s Moroccan Tile", releaseDate: "04/15/2019", shoeImageName: "997sMoroccanTile", info: "The New Balance 997S sneaker works archival elements and running-inspired modifications to refresh the classic silhouette. This 'Moroccan Tile' version—unveiled in April 2019—opts for a two-tone engineered mesh bootie with a reinforced leather toe, lace closure and an updated 3D initial logo on the quarter panel. The signature ENCAP and ABZORB midsole repeats the color-block theme over a rubber outsole.", favorites: "349", price: "$140")
        newBalanceShoes.append(shoe)
        
        shoe = NewBalanceModel(shoeName: "New Balance 997s No Days Off", releaseDate: "04/04/2019", shoeImageName: "997sNoDaysOff", info: "The Bodega x New Balance 997S reinvents the core design in a daring expression of athleticism and cultural commentary. Debuted in April 2019, this 'No Days Off' remodel arrives with a neoprene bootie complemented by distressed, hairy suede overlays, a mesh forefoot and a diamond-patterned counter. A color block tongue badge and brand initial swap out the classic logos. Dual ABZORB and ENCAP cushioning tech upgrade the midsole.", favorites: "781", price: "$160")
        newBalanceShoes.append(shoe)
        
        shoe = NewBalanceModel(shoeName: "New Balance 997s Sport Steel", releaseDate: "01/01/2018", shoeImageName: "997sSportSteel", info: "Featuring a legendary silhouette with heritage-inspired design details, the 997 Reveal abbreviates classic New Balance style in a look like no other.", favorites: "204", price: "$120")
        newBalanceShoes.append(shoe)
        
        shoe = NewBalanceModel(shoeName: "New Balance 999 Concepts The Kennedy", releaseDate: "04/16/2011", shoeImageName: "999TheKennedy", info: "Massachusetts streetwear retailer Concepts and New Balance teamed up for this 2011 Concepts x 999 'The Kennedy.’ Inspired by the Kennedy clan’s passion for sailing at Hyannis Port, the nautical look features a beige, grey, and tan pigskin suede upper with a sail-like embossed nubuck on the heel counter. It also comes with an Abzorb crash pad in the sole unit, as well as nautical flags on the tongue and sockliner.", favorites: "993", price: "$150")
        newBalanceShoes.append(shoe)
        
    }
    
}
