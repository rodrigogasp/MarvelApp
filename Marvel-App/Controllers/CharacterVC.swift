//
//  CharacterVC.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 04/01/21.



import UIKit
import SDWebImage

class CharacterVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    /* **************************************************************************************************
     **
     **  MARK: Variables Declaration
     **
     ****************************************************************************************************/
    
    var characterView : CharacterView!
    
    var character : Character!
    
    var comics : [Comics] = []
    
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
        
        //----------------------------Delegate-------------------------------
        
        characterView.collectionView.delegate = self
        
        characterView.collectionView.dataSource = self
        
        characterView.collectionView.register(CharacterComicsCell.self, forCellWithReuseIdentifier: "CharacterComicsCell")
    
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.startLoading()
        
        DispatchQueue.main.async {
            
            CharactersAPI.getCharactersComics(id: self.character.id) { (response) in
                
                self.stopLoading()
                
                if response.success {
                    
                    self.comics = response.comics
                    
                    self.characterView.collectionView.reloadData()
                    
                    self.setInfo()

                } else {
                    
                    GenericAlert.genericAlert(self, title: response.erroMessage, message: "", actions: [])
                    
                    self.setInfo()
                    
                }
                
            }
            
            
        }

        
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
        
        if self.character.description == "" || self.character.description.isEmpty {
            
            characterView.descriptionContent.text = "No description available"
            characterView.descriptionContent.sizeToFit()
            
        } else {
            
            characterView.descriptionContent.text = self.character.description
            characterView.descriptionContent.sizeToFit()
            
        }
        
        characterView.comicsLabel.frame.origin.y = characterView.descriptionContent.frame.origin.y + characterView.descriptionContent.frame.height + 25
        
        characterView.seeMoreButton.center.y = characterView.comicsLabel.center.y
        
        characterView.collectionView.frame.origin.y = characterView.comicsLabel.frame.origin.y + characterView.comicsLabel.frame.height + 10
        
        if self.comics.count != 0 {
            
            characterView.scrollView.contentSize = CGSize(width: characterView.scrollView.frame.width, height: characterView.collectionView.frame.origin.y + characterView.collectionView.frame.height + 20)
            
            self.characterView.comicsLabel.isHidden = false
            self.characterView.seeMoreButton.isHidden = false
            self.characterView.collectionView.isHidden = false
            
        } else {
            
            self.characterView.comicsLabel.isHidden = true
            self.characterView.seeMoreButton.isHidden = true
            self.characterView.collectionView.isHidden = true
            
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
    
    /* **************************************************************************************************
     **
     **  MARK: Collection view
     **
     ****************************************************************************************************/
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.comics.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CharacterComicsCell", for: indexPath as IndexPath) as! CharacterComicsCell
        
        let urlString = "\(comics[indexPath.row].thumbnail.path).\(comics[indexPath.row].thumbnail.type)"
        
        
        let url = URL(string: urlString)
        
        if url != nil {
            
            cell.comicImage.sd_setImage(with: url, completed: nil)
        
        }
        
        return cell
        
    }
    
}




