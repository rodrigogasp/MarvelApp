//
//  API.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 30/12/20.

import Alamofire
import UIKit
import CryptoSwift

class API {
    
    static let host = "https://gateway.marvel.com/v1/"
    
    static let characters = "public/characters"
    
    //------------------------- Singleton -----------------------------
    
    static let sharedInstance = API()
    
    var sessionManager : Session!
    
    //------------------------API KEYS -----------------------------
    
    var publicKey = "1b5339c489fc77e2ab62719dc0e743d3"
    var privateKey = "9f1822623eb61a035d760510431fbb6bf9fcaac7"
    var ts = Date().timeIntervalSince1970.description
    var hash : String = ""

    
    /* *********************************************************************************
     **
     **  MARK: Init
     **
     ***********************************************************************************/
    
    
    fileprivate init() {
        
        let language = Locale.preferredLanguages[0] as String
                
        //---------------------- Default Header ----------------------------

        var headers = HTTPHeaders.default

        headers["Accept-Language"] = "\(language.prefix(2))"

        headers["The-Timezone-IANA"] = "America/Sao_Paulo"

//       if !TimeZone.current.identifier.isEmpty {
//
//            headers["The-Timezone-IANA"] = TimeZone.current.identifier
//
//        } else {
//
//            headers["The-Timezone-IANA"] = "America/Sao_Paulo"
//
//        }

        //----------------------- URLSessionConfiguration ---------------------

        let configuration = URLSessionConfiguration.default

        configuration.headers = headers

        //----------------------- Session Manager -----------------------------

        sessionManager = Alamofire.Session(configuration: configuration)
        
        hash = "\(ts)\(privateKey)\(publicKey)".md5()
        
        
    }
    
}


