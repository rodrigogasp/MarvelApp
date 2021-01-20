//
//  Round1VC.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 19/01/21.



import UIKit

class Round1VC: UIViewController {
    
    /* **************************************************************************************************
     **
     **  MARK: Variables Declaration
     **
     ****************************************************************************************************/
    
    var round1View : Round1View!
    
    var fighters : [Character] = []
    
    /* **************************************************************************************************
     **
     **  MARK: View
     **
     ****************************************************************************************************/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        round1View = Round1View(view: view, parent: self)
    
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        
        setInfo()
        
    }
    
    /* **************************************************************************************************
     **
     **  MARK: Set Info
     **
     ****************************************************************************************************/

    func setInfo() {
        
        var url = URL(string: "\(self.fighters[0].thumbnail.path).\(self.fighters[0].thumbnail.type)")
        
        if url != nil {
            
            round1View.fighter1ImageView.sd_setImage(with: url, completed: nil)
            
        }
        
        round1View.fighter1Label.text = fighters[0].name
        
        //------------------------- 2 -----------------------------
        
        url = URL(string: "\(self.fighters[1].thumbnail.path).\(self.fighters[1].thumbnail.type)")
        
        if url != nil {
            
            round1View.fighter2ImageView.sd_setImage(with: url, completed: nil)
            
        }
        
        round1View.fighter2Label.text = fighters[1].name
        
        //------------------------- 3-----------------------------
        
        url = URL(string: "\(self.fighters[2].thumbnail.path).\(self.fighters[2].thumbnail.type)")
        
        if url != nil {
            
            round1View.fighter3ImageView.sd_setImage(with: url, completed: nil)
            
        }
        
        round1View.fighter3Label.text = fighters[2].name
        
        //------------------------- 4 -----------------------------
        
        url = URL(string: "\(self.fighters[3].thumbnail.path).\(self.fighters[3].thumbnail.type)")
        
        if url != nil {
            
            round1View.fighter4ImageView.sd_setImage(with: url, completed: nil)
            
        }
        
        round1View.fighter4Label.text = fighters[3].name
        
    }
    
}




