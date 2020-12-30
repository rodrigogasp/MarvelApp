//
//  StartVC.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 29/12/20.


import UIKit

class StartVC: UIViewController {
    
    /* **************************************************************************************************
     **
     **  MARK: Variables Declaration
     **
     ****************************************************************************************************/
    
    var startView : StartView!
    
    /* **************************************************************************************************
     **
     **  MARK: View
     **
     ****************************************************************************************************/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startView = StartView(view: view, parent: self)
    
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.startLoading()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
            
            self.stopLoading()
            
        }
        
    }

    
}



