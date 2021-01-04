//
//  CharacterVC.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 04/01/21.



import UIKit

class CharacterVC: UIViewController {
    
    /* **************************************************************************************************
     **
     **  MARK: Variables Declaration
     **
     ****************************************************************************************************/
    
    var characterView : CharacterView!
    
    var character : Character!
    
    /* **************************************************************************************************
     **
     **  MARK: View
     **
     ****************************************************************************************************/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        characterView = CharacterView(view: view, parent: self)
        
        //------------------------- Buttons Targets -----------------------------
        
        characterView.backButton.addTarget(self, action: #selector(backAction), for: .touchUpInside)
    
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setInfo()

        
    }
    
    /* **************************************************************************************************
     **
     **  MARK: Set info
     **
     ****************************************************************************************************/
    
    func setInfo() {
        
        characterView.nameLabel.text = self.character.name
        
    }
    
    /* **************************************************************************************************
     **
     **  MARK: Back Action
     **
     ****************************************************************************************************/
    
    @objc func backAction() {
        
        self.navigationController?.popViewController(animated: true)
        
    }

    
}




