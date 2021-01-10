//
//  CharacterVC.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 04/01/21.



import UIKit
import SDWebImage

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

        
        CharactersAPI.getCharactersComics(id: self.character.id) { (response) in
            
            if response.success {
                
                
                
            } else {
                
                GenericAlert.genericAlert(self, title: response.erroMessage, message: "", actions: [])
                
            }
            
        }
        
        setInfo()

        
    }
    
    /* **************************************************************************************************
     **
     **  MARK: Set info
     **
     ****************************************************************************************************/
    
    func setInfo() {
        
        characterView.nameLabel.text = self.character.name
        
        let urlString = "\(self.character.thumbnail.path).\(self.character.thumbnail.type)"
        
        
        let url = URL(string: urlString)
        
        if url != nil {
            
            characterView.characterImage.sd_setImage(with: url, completed: nil)
        
        }
        
        if self.character.description == "" {
            
            characterView.descriptionContent.text = "No description available"
            characterView.descriptionContent.sizeToFit()
            
        } else {
            
            characterView.descriptionContent.text = self.character.description
            characterView.descriptionContent.sizeToFit()
            
        }
        
        
        
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




