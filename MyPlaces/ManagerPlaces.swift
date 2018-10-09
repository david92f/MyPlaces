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
    
    // ****************************************
    
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
        
        var item = Place()
        
        // bucle per buscar si un id identic al donat previament
        for place in places {
            if place.id.elementsEqual(id) {
                item = place
            }
            
        }
        
        return item
    }
    
    func remove(_ value:Place) {

        var i = 0
        
        // bucle per poder extreure l'index on es troba l'element a borrar
        for item in places {
            if !item.id.elementsEqual(value.id){
                i=i+1
            }
        }
        
        places.remove(at: i)
        
    }
    
    //******************************************
    // Singleton
    //
    //  Unique instance for all App
    //
    
    private static var sharedManagerPlaces: ManagerPlaces = {
        
        var singletonManager:ManagerPlaces
        
        singletonManager = ManagerPlaces()
        
        return singletonManager
    }()
    
    
    class func shared() -> ManagerPlaces {
        return sharedManagerPlaces
    }
    
}
