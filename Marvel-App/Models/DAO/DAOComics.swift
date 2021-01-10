//
//  DAOComics.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 10/01/21.


import Foundation
import CoreData
import UIKit

class DAOComics {
    
    fileprivate init() {
        
    }
    
    static func transformJSONInArrayComics(_ JSON : AnyObject) -> [Comics] {
        
        var array : [Comics] = []
        
        guard let data = JSON as? NSArray else {
            return array
        }
        
        for item in data {
            
            array.append(transformJSONInComics(item as AnyObject))
            
        }
        
        return array
        
    }
    
    static func transformJSONInComics(_ JSON : AnyObject) -> Comics {
        
        let comics = Comics()
        
        if let info = JSON["title"] as? String {
            comics.title = info
        }
        
        if let info = JSON["thumbnail"] as? [String: AnyObject] {
            comics.thumbnail = DAOThumbnail.transformJSONInThumbnail(info as AnyObject)
        }
        
        return comics
        
    }
    
}







