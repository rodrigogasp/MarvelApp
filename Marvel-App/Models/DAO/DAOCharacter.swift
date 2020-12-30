//
//  DAOCharacter.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 30/12/20.

import Foundation
import CoreData
import UIKit

class DAOCharacter {
    
    fileprivate init() {
        
    }
    
    static func transformJSONInArrayCharacter(_ JSON : AnyObject) -> [Character] {
        
        var array : [Character] = []
        
        guard let data = JSON as? NSArray else {
            return array
        }
        
        for item in data {
            
            array.append(transformJSONInCharacter(item as AnyObject))
            
        }
        
        return array
        
    }
    
    static func transformJSONInCharacter(_ JSON : AnyObject) -> Character {
        
        let character = Character()
        
        if let info = JSON["name"] as? String {
            character.name = info
        }
        
        if let info = JSON["thumbnail"] as? [String: AnyObject] {
            character.thumbnail = DAOThumbnail.transformJSONInThumbnail(info as AnyObject)
        }
        
        return character
        
    }
    
}






