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
    
    static func getCharacters(offset : Int, callback: @escaping (ServerResponse) -> Void) {
        
        let newURL = API.host + API.characters + "?ts=\(API.sharedInstance.ts)&" + "apikey=\(API.sharedInstance.publicKey)&hash=\(API.sharedInstance.hash)&offset=\(offset)"
        
        
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
    
    /* *********************************************************************************
     **
     **  MARK: Get Characters By Name
     **
     ***********************************************************************************/
    
    static func getCharactersByName(offset: Int, name : String, callback: @escaping (ServerResponse) -> Void) {
        
        let newURL = API.host + API.characters + "?ts=\(API.sharedInstance.ts)&" + "apikey=\(API.sharedInstance.publicKey)&hash=\(API.sharedInstance.hash)&nameStartsWith=\(name)&offset=\(offset)"
        
        
        print("request - getCharactersByName")
        print(newURL)
        
        API.sharedInstance.sessionManager.request(newURL,
                                                  method: HTTPMethod.get,
                                                  parameters: nil,
                                                  encoding: JSONEncoding.default,
                                                  headers: nil
        ).responseJSON(completionHandler: { response in
            
            let resposta = ServerResponse()
            
            print("response - getCharactersByName")
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
    
    /* *********************************************************************************
     **
     **  MARK: Get Characters Comics
     **
     ***********************************************************************************/
    
    static func getCharactersComics(id : Int, callback: @escaping (ServerResponse) -> Void) {
        
        let newURL = API.host + API.characters + "/\(id)/comics" + "?ts=\(API.sharedInstance.ts)&" + "apikey=\(API.sharedInstance.publicKey)&hash=\(API.sharedInstance.hash)"
        
        
        print("request - getCharactersComics")
        print(newURL)
        
        API.sharedInstance.sessionManager.request(newURL,
                                                  method: HTTPMethod.get,
                                                  parameters: nil,
                                                  encoding: JSONEncoding.default,
                                                  headers: nil
        ).responseJSON(completionHandler: { response in
            
            let resposta = ServerResponse()
            
            print("response - getCharactersComics")
            print(response.result)
            
            switch response.result {
            
            case let .success(value):
                resposta.statusCode = response.response?.statusCode ?? 0
                
                let JSON = value as AnyObject
                
                if let JSONArray = JSON["data"] as? [String : AnyObject] {
                    
                    if let results = JSONArray["results"] as? [[String : Any]] {
                        
                        resposta.comics = DAOComics.transformJSONInArrayComics(results as AnyObject)
                        
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
    
    /* *********************************************************************************
     **
     **  MARK: Get Characters By id
     **
     ***********************************************************************************/
    
    static func getCharactersById(id: Int, callback: @escaping (ServerResponse) -> Void) {
        
        let newURL = API.host + API.characters + "/\(id)" + "?ts=\(API.sharedInstance.ts)&" + "apikey=\(API.sharedInstance.publicKey)&hash=\(API.sharedInstance.hash)"
        
        
        print("request - getCharactersById")
        print(newURL)
        
        API.sharedInstance.sessionManager.request(newURL,
                                                  method: HTTPMethod.get,
                                                  parameters: nil,
                                                  encoding: JSONEncoding.default,
                                                  headers: nil
        ).responseJSON(completionHandler: { response in
            
            let resposta = ServerResponse()
            
            print("response - getCharactersById")
            print(response.result)
            
            switch response.result {
            
            case let .success(value):
                resposta.statusCode = response.response?.statusCode ?? 0
                
                let JSON = value as AnyObject
                
                if let JSONArray = JSON["data"] as? [String : AnyObject] {
                    
                    if let results = JSONArray["results"] as? [[String : Any]] {
                        
                        resposta.character = DAOCharacter.transformJSONInCharacter(results[0] as AnyObject)
                        
                        resposta.success = true
                        
                        callback(resposta)
                        
                        return
                        
                    }
    
                    
                }
                
                
            case let .failure(error):
                print(error)
                
            }
            
            resposta.success = false
            resposta.erroMessage = "Error loading character"
            
            callback(resposta)
            
        })
        
    }

    
}



