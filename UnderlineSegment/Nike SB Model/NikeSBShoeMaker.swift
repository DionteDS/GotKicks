//
//  ShoeMaker.swift
//  UnderlineSegment
//
//  Created by Dionte Silmon on 3/7/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import Foundation

struct NikeSBShoeMaker {
    
    var nikeSBshoes = [NikeSBShoeModel]()
    
    init() {
        
        var shoe: NikeSBShoeModel
        
        shoe = NikeSBShoeModel(shoeName: "Nike SB Dunk Low Sharks", shoeReleaseDate: "10/01/2002", shoeImageName: "sharks", info: "The Dunk Low Pro SB ‘Shark’ released in October 2002, featuring a contrasting two-tone design shared by two additional Dunk Low colorways released the same month—the ‘Flash’ and ‘Loden.’ This pair is executed with a leather base finished in a dark blue finish that Nike calls Nightshade, accented with contrasting Team Red nubuck overlays. The bold hues are offset by a neutral Shark on the midsole and stuffed mesh tongue.", favorites: "140", price: "$65")
        nikeSBshoes.append(shoe)
        
        shoe = NikeSBShoeModel(shoeName: "Nike SB Dunk Low Jedi", shoeReleaseDate: "05/01/2004", shoeImageName: "jediSB", info: "The tattered attire and green skin of Yoda, the Jedi master who taught Luke Skywalker the ways of the Force in The Empire Strikes Back, serve as the inspiration for the Dunk Low Pro SB 'Jedi,' first released in 2004. Further Star Wars touches can be seen on the laces, heel panel and tongue of the skate shoe, which all sport a lightsaber-style neon green.", favorites: "200", price: "$100")
        nikeSBshoes.append(shoe)
        
        shoe = NikeSBShoeModel(shoeName: "Nike SB Dunk Low Flash", shoeReleaseDate: "10/01/2002", shoeImageName: "flashSB", info: "The Dunk Low Pro SB ‘Flash’ released in October 2002, highlighting a simple two-tone colorway typical of Nike SB’s earliest designs and packaged in the same orange and brown boxes that Nike used for its general releases. The low-top makes use of a leather base in Orange Flash, contrasted by black suede overlays and a matching black leather Swoosh. The shoe also sports a stuffed mesh tongue and a Zoom Air insole.", favorites: "144", price: "$60")
        nikeSBshoes.append(shoe)
        
        shoe = NikeSBShoeModel(shoeName: "Nike SB Dunk Low Tiffany", shoeReleaseDate: "08/01/2005", shoeImageName: "tiffanyLowSB", info: "Releasing in August 2005 as part of the Team Manager series, the Diamond Supply Co. x Dunk Low Pro SB ‘Tiffany’ drew long lines and campouts at skate shops throughout the country. The leather upper is finished in Aqua and accented with a metallic silver Swoosh. The black leather overlays feature a crocodile-embossed texture and contrast white stitching.", favorites: "1,230", price: "$150")
        nikeSBshoes.append(shoe)
        
        shoe = NikeSBShoeModel(shoeName: "Nike SB Dunk Mid Spider Man", shoeReleaseDate: "11/01/2008", shoeImageName: "spidermanSB", info: "Here is a closer look at the Nike SB Dunk Mid inspired by Spiderman in the colors of Marina and Black; there is another Dunk High that compliments this Dunk Mid as that shoe is inspired by Spiderman’s nemesis, Venom. This Dunk Mid though uses a simple color combination of Marina and Black along with some hits of Grey and Red.", favorites: "93", price: "$80")
        nikeSBshoes.append(shoe)
        
        shoe = NikeSBShoeModel(shoeName: "Nike SB Dunk Low What The Dunk", shoeReleaseDate: "10/01/2007", shoeImageName: "whatTheDunkSB", info: "Nike SB released the ‘What The Dunk?’ as part of the campaign for “Nothing But the Truth”, their very first feature length skate film featuring the Nike SB Team Riders. Created from 31 different Nike SB Dunks, each part of the ‘What The Dunk?’ is taken directly from those 31 Dunks, including panels, shoelaces, tongues, outsoles and stitching. Out of 31 Dunks, only one was unattainable to consumers. The neon green lining on the left shoe is from the infamous ‘eBay Dunk’, where it was a 1 of 1. The ‘What The…’ concept has been adopted on a few different shoes, but the Nike SB Dunk started it all.", favorites: "841", price: "$120")
        nikeSBshoes.append(shoe)
        
        shoe = NikeSBShoeModel(shoeName: "Nike SB Dunk Low Purple Pigeon", shoeReleaseDate: "11/01/2006", shoeImageName: "purplePigeonSB", info: "The Nike SB Dunk Low Pro SB ‘Purple Pigeon’ was released In 2006 and has a close resemblance to the ‘Pigeon’ Dunk since they share a grey base color. The ‘Purple Pigeon’ showcases a Light Graphite upper with a Violet Swoosh and outsole.", favorites: "479", price: "65")
        nikeSBshoes.append(shoe)
        
        shoe = NikeSBShoeModel(shoeName: "Nike SB Dunk Mid Northern Lights", shoeReleaseDate: "07/01/2009", shoeImageName: "northernLightsSB", info: "The Nike SB Dunk Mid Premium ‘Northern Lights’ isn’t a special strain of Dunk that’s only legal in a few states, but rather a shoutout to the southern hemisphere’s breathtaking natural laser light show. The iridescent green Swooshes mimic the Aurora Borealis’ light emissions that emanate from rapid collisions of solar particles. These look just fantastic in a mix of brown suede and black leather.", favorites: "75", price: "$80")
        nikeSBshoes.append(shoe)
        
        shoe = NikeSBShoeModel(shoeName: "Nike SB Dunk Low New Castle", shoeReleaseDate: "06/01/2008", shoeImageName: "newCastleSB", info: "As the first shoe from Nike’s skateboarding line, the Dunk Low SB took the 80s basketball model and converted it into an iconic skater shoe. This version, the Dunk Low SB Premium 'Newcastle Brown Ale' sneaker, revamped the silhouette with beer-inspired design. The June 2008 release is constructed of layered overlays that are dressed in colors that take cues from the UK ale manufacturer’s label, as well as the color of the brew.", favorites: "590", price: "$90")
        nikeSBshoes.append(shoe)
        
        shoe = NikeSBShoeModel(shoeName: "Nike SB Dunk High Dinosaur Jr", shoeReleaseDate: "02/01/2007", shoeImageName: "dinoJRsb", info: "The Nike Dunk High Premium SB ‘Dinosaur Jr’ celebrates the alternative rock band led by famously laconic frontman J Mascis. Released in February 2007, the high-top features a leather upper coated in metallic silver, with contrast purple stitching and additional hits of violet on the laces, lining and outsole. The lateral heel on the left shoe is inscribed with ‘Dinosaur Jr,’ while the opposite shoe is adorned with the likeness of ‘peace sign guy,’ the band’s unofficial mascot.", favorites: "362", price: "$75")
        nikeSBshoes.append(shoe)
        
    }
}
