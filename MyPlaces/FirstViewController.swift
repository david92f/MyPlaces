//
//  FirstViewController.swift
//  MyPlaces
//
//  Created by user145380 on 9/26/18.
//  Copyright © 2018 david_fernandez. All rights reserved.
//

import UIKit

class FirstViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Número de elementos del manager
        return section
    }
    
    // Sirve para indicar subsecciones de la lista. En nuestro caso devolvemos
    // 1 porque no hay subsecciones.
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Detectar pulsación en un elemento.
        if tableView.isFirstResponder {
            print("pulsación....")
        }
        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        // Devolver la altura de la fila situada en una posición determinada.
        return tableView.estimatedRowHeight
        
    }
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // devolver una instancia de la clase UITableViewCell que pinte la fila seleccionada.
        return tableView.cellForRow(at: indexPath)!
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


