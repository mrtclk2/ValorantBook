//
//  Valorant.swift
//  ValorantBook
//
//  Created by Murat Çelik on 17.02.2023.
//

import Foundation
import UIKit

class Valorant{
    
    var name : String
    var duty : String
    var image : UIImage
    
    init(personName: String, personDuty: String, personImage: UIImage) {
        
        name = personName
        duty = personDuty
        image = personImage
    }
}
