//
//  Place.swift
//  MyPlaces
//
//  Created by user145380 on 10/1/18.
//  Copyright © 2018 david_fernandez. All rights reserved.
//

import Foundation
import MapKit

class Place {
    
    enum PlacesTypes: Int, Codable {
        case GenericPlace
        case TouristicPlace
    }
    
    var id: String = ""
    var type: PlacesTypes = .GenericPlace
    var name: String = ""
    var description: String = ""
    var location: CLLocationCoordinate2D!
    var image:Data? = nil
    
    init() {
        
    }
    
    init(name:String,description:String,image_in:Data?) {
        self.id = UUID().uuidString
        self.name = name
        self.description = description
        
    }
    
    init(type:PlacesTypes,name:String,description:String,image_in:Data?) {
        self.id = UUID().uuidString
        self.type = type
        self.name = name
        self.description = description
        
    }
}
