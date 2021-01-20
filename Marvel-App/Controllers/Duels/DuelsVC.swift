//
//  DuelsVC.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 13/01/21.
//


import UIKit

class DuelsVC: UIViewController {
    
    /* **************************************************************************************************
     **
     **  MARK: Variables Declaration
     **
     ****************************************************************************************************/
    
    var duelsView : DuelsView!
    
    var charactersArray : [Int] = [1009610, 1010801,  1017300, 1009220,  1010338, 1010788, 1014985, 1009664, 1009407, 1009351, 1010743, 1009187, 1009189, 1009368, 1009652, 1009718, 1009417, 1009268, 1009504, 1009262, 1009662, 1009515, 1009697, 1009480, 1009215, 1009356, 1009366, 1009629, 1009459, 1010735, 1009592, 1009281, 1009338, 1009562]
    
    var fightersArray : [Int] = []
    
    var namesArray : [Character] = []
    
    /* **************************************************************************************************
     **
     **  MARK: View
     **
     ****************************************************************************************************/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        duelsView = DuelsView(view: view, parent: self)
        
        duelsView.backButton.addTarget(self, action: #selector(backAction), for: .touchUpInside)
        
        duelsView.startButton.addTarget(self, action: #selector(startAction), for: .touchUpInside)
    
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.parent?.tabBarController!.tabBar.barTintColor = UIColor.marvelBack()
        
        while self.fightersArray.count < 8 {
            
            let random = Int.random(in: 0...33)
            
            if !self.fightersArray.contains(random) {
                
                fightersArray.append(charactersArray[random])
                
            }
            
        }
        
        print(self.fightersArray)
        
        for id in self.fightersArray {
            
            CharactersAPI.getCharactersById(id: id) { (response) in
                
                if response.success {
                    
                    self.namesArray.append(response.character)
                    
                }
                
            }
            
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
     **  MARK: Start Action
     **
     ****************************************************************************************************/

    @objc func startAction() {
        
        let vc = Round1VC()
        
        vc.fighters = self.namesArray
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}




