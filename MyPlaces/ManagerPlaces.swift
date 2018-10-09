//
//  ManagerPlaces.swift
//  MyPlaces
//
//  Created by user145380 on 10/9/18.
//  Copyright © 2018 david_fernandez. All rights reserved.
//

import Foundation

class ManagerPlaces {
    
    var places : [Place] = []
    
    init(){
        
    }
    
    // metodes
    
    func append(_ value:Place){
        places.append(value)
        
    }
    
    func GetCount() -> Int {
        
        return places.count
        
    }
    
    func GetItemAt(position:Int) -> Place {
        
        return places[position]
    }
    
    func GetItemById(id:String) -> Place {
        
        var item : Place
        
        // bucle per buscar si un id identic al donat previament
        for place in places {
            if place.id.elementsEqual(id) {
                item = place
            }
            
        }
        
        return item
    }
    
    func remove(_ value:Place) {
        places.remove(value)
        
    }
    
}
