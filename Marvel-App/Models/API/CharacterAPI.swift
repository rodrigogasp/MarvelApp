//
//  CharacterAPI.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 30/12/20.


import UIKit
import Alamofire

class CharactersAPI {
    
    fileprivate init () {
        
    }
    
    /* *********************************************************************************
     **
     **  MARK: Get Characters
     **
     ***********************************************************************************/
    
    static func getCharacters(callback: @escaping (ServerResponse) -> Void) {
        
        let newURL = API.host + API.characters + "?ts=\(API.sharedInstance.ts)&" + "apikey=\(API.sharedInstance.publicKey)&hash=\(API.sharedInstance.hash)"
        
        
        print("request - getCharacters")
        print(newURL)
        
        API.sharedInstance.sessionManager.request(newURL,
                                                  method: HTTPMethod.get,
                                                  parameters: nil,
                                                  encoding: JSONEncoding.default,
                                                  headers: nil
        ).responseJSON(completionHandler: { response in
            
            let resposta = ServerResponse()
            
            print("response - getCharacters")
            print(response.result)
            
            switch response.result {
            
            case let .success(value):
                resposta.statusCode = response.response?.statusCode ?? 0
                
                let JSON = value as AnyObject
                
                if let JSONArray = JSON["data"] as? [String : AnyObject] {
                    
                    if let results = JSONArray["results"] as? [[String : Any]] {
                        
                        resposta.characters = DAOCharacter.transformJSONInArrayCharacter(results as AnyObject)
                        
                        resposta.success = true
                        
                        callback(resposta)
                        
                        return
                        
                    }
    
                    
                }
                
                
            case let .failure(error):
                print(error)
                
            }
            
            resposta.success = false
            resposta.erroMessage = "Error loading characters"
            
            callback(resposta)
            
        })
        
    }

    
}



