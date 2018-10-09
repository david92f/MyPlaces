//
//  PlaceTourist.swift
//  MyPlaces
//
//  Created by user145380 on 10/9/18.
//  Copyright © 2018 david_fernandez. All rights reserved.
//

import Foundation

class PlaceTourist : Place {
    
    var discount_tourist: String = ""
    
    override init() {
        super.init()
        type = .TouristicPlace
        
    }
    
    init(name:String,description:String,discount_tourist:String,image_in:Data?) {
        super.init(type:.TouristicPlace,name:name,description:description,image_in:image_in)
        self.discount_tourist = discount_tourist
        
    }
}
