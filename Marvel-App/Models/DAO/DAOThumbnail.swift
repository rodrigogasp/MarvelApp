//
//  DAOThumbnail.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 30/12/20.


import Foundation
import CoreData
import UIKit

class DAOThumbnail {
    
    fileprivate init() {
        
    }
    
    static func transformJSONInArrayThumbnail(_ JSON : AnyObject) -> [Thumbnail] {
        
        var array : [Thumbnail] = []
        
        guard let data = JSON as? NSArray else {
            return array
        }
        
        for item in data {
            
            array.append(transformJSONInThumbnail(item as AnyObject))
            
        }
        
        return array
        
    }
    
    static func transformJSONInThumbnail(_ JSON : AnyObject) -> Thumbnail {
        
        let thumbnail = Thumbnail()
        
        if let info = JSON["path"] as? String {
            thumbnail.path = info
        }
        
        if let info = JSON["extension"] as? String {
            thumbnail.type = info
        }

        return thumbnail
        
    }
    
}





