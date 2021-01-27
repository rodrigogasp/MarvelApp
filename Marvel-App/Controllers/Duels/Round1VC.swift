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
        
        round1View.fighter1Button.addTarget(self, action: #selector(fighter1Action), for: .touchUpInside)
        round1View.fighter2Button.addTarget(self, action: #selector(fighter2Action), for: .touchUpInside)
        round1View.fighter3Button.addTarget(self, action: #selector(fighter3Action), for: .touchUpInside)
        round1View.fighter4Button.addTarget(self, action: #selector(fighter4Action), for: .touchUpInside)
        round1View.fighter5Button.addTarget(self, action: #selector(fighter5Action), for: .touchUpInside)
        round1View.fighter6Button.addTarget(self, action: #selector(fighter6Action), for: .touchUpInside)
        round1View.fighter7Button.addTarget(self, action: #selector(fighter7Action), for: .touchUpInside)
        round1View.fighter8Button.addTarget(self, action: #selector(fighter8Action), for: .touchUpInside)
    
        
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
        
        //------------------------- 5 -----------------------------
        
        url = URL(string: "\(self.fighters[4].thumbnail.path).\(self.fighters[4].thumbnail.type)")
        
        if url != nil {
            
            round1View.fighter5ImageView.sd_setImage(with: url, completed: nil)
            
        }
        
        round1View.fighter5Label.text = fighters[4].name
        
        //------------------------- 6 -----------------------------
        
        url = URL(string: "\(self.fighters[5].thumbnail.path).\(self.fighters[5].thumbnail.type)")
        
        if url != nil {
            
            round1View.fighter6ImageView.sd_setImage(with: url, completed: nil)
            
        }
        
        round1View.fighter6Label.text = fighters[5].name
        
        //------------------------- 7 -----------------------------
        
        url = URL(string: "\(self.fighters[6].thumbnail.path).\(self.fighters[6].thumbnail.type)")
        
        if url != nil {
            
            round1View.fighter7ImageView.sd_setImage(with: url, completed: nil)
            
        }
        
        round1View.fighter7Label.text = fighters[6].name
        
        //------------------------- 8 -----------------------------
        
        url = URL(string: "\(self.fighters[7].thumbnail.path).\(self.fighters[7].thumbnail.type)")
        
        if url != nil {
            
            round1View.fighter8ImageView.sd_setImage(with: url, completed: nil)
            
        }
        
        round1View.fighter8Label.text = fighters[7].name
        
    }
    
    /* **************************************************************************************************
     **
     **  MARK: Buttons Actions
     **
     ****************************************************************************************************/
    
    //------------------------- 1 -----------------------------
    
    @objc func fighter1Action() {
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .default) { (alert) in
            
            return
            
        }
        
        let yesAction = UIAlertAction(title: "Yes", style: .default) { (alert) in
            self.round1View.fighter2ImageView.alpha = 0.3
            self.round1View.fighter2View.alpha = 0.3
            self.round1View.fighter2Label.alpha = 0.3
            self.round1View.fighter2Button.isUserInteractionEnabled = false
            self.round1View.fighter1Button.isUserInteractionEnabled = false
            self.round1View.versus1ImageView.isHidden = true
            self.round1View.winner1ImageView.isHidden = false
            
            UIView.animate(withDuration: 0.5) {
                
                self.round1View.winner1ImageView.alpha = 1
                
            }
            
            
        }
        
        GenericAlert.genericAlert(self, title: "Are you sure you want \(self.fighters[0].name) to be the winner of this battle?", message: "", actions: [cancelAction, yesAction])
        
    }
    
    //------------------------- 2 -----------------------------
    
    @objc func fighter2Action() {
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .default) { (alert) in
            
            return
            
        }
        
        let yesAction = UIAlertAction(title: "Yes", style: .default) { (alert) in
            self.round1View.fighter1ImageView.alpha = 0.3
            self.round1View.fighter1View.alpha = 0.3
            self.round1View.fighter1Label.alpha = 0.3
            self.round1View.fighter1Button.isUserInteractionEnabled = false
            self.round1View.fighter2Button.isUserInteractionEnabled = false
            self.round1View.versus1ImageView.isHidden = true
            self.round1View.winner2ImageView.isHidden = false
            
            UIView.animate(withDuration: 0.5) {
                
                self.round1View.winner2ImageView.alpha = 1
                
            }
            
            
        }
        
        GenericAlert.genericAlert(self, title: "Are you sure you want \(self.fighters[1].name) to be the winner of this battle?", message: "", actions: [cancelAction, yesAction])
        
    }
    
    //------------------------- 3 -----------------------------
    
    @objc func fighter3Action() {
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .default) { (alert) in
            
            return
            
        }
        
        let yesAction = UIAlertAction(title: "Yes", style: .default) { (alert) in
            self.round1View.fighter4ImageView.alpha = 0.3
            self.round1View.fighter4View.alpha = 0.3
            self.round1View.fighter4Label.alpha = 0.3
            self.round1View.fighter4Button.isUserInteractionEnabled = false
            self.round1View.fighter3Button.isUserInteractionEnabled = false
            self.round1View.versus2ImageView.isHidden = true
            self.round1View.winner3ImageView.isHidden = false
            
            UIView.animate(withDuration: 0.5) {
                
                self.round1View.winner3ImageView.alpha = 1
                
            }
            
            
        }
        
        GenericAlert.genericAlert(self, title: "Are you sure you want \(self.fighters[2].name) to be the winner of this battle?", message: "", actions: [cancelAction, yesAction])
        
    }
    
    //------------------------- 4 -----------------------------
    
    @objc func fighter4Action() {
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .default) { (alert) in
            
            return
            
        }
        
        let yesAction = UIAlertAction(title: "Yes", style: .default) { (alert) in
            self.round1View.fighter3ImageView.alpha = 0.3
            self.round1View.fighter3View.alpha = 0.3
            self.round1View.fighter3Label.alpha = 0.3
            self.round1View.fighter3Button.isUserInteractionEnabled = false
            self.round1View.fighter4Button.isUserInteractionEnabled = false
            self.round1View.versus2ImageView.isHidden = true
            self.round1View.winner4ImageView.isHidden = false
            
            UIView.animate(withDuration: 0.5) {
                
                self.round1View.winner4ImageView.alpha = 1
                
            }
            
            
        }
        
        GenericAlert.genericAlert(self, title: "Are you sure you want \(self.fighters[3].name) to be the winner of this battle?", message: "", actions: [cancelAction, yesAction])
        
    }
    
    //------------------------- 5 -----------------------------
    
    @objc func fighter5Action() {
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .default) { (alert) in
            
            return
            
        }
        
        let yesAction = UIAlertAction(title: "Yes", style: .default) { (alert) in
            self.round1View.fighter6ImageView.alpha = 0.3
            self.round1View.fighter6View.alpha = 0.3
            self.round1View.fighter6Label.alpha = 0.3
            self.round1View.fighter6Button.isUserInteractionEnabled = false
            self.round1View.fighter5Button.isUserInteractionEnabled = false
            self.round1View.versus3ImageView.isHidden = true
            self.round1View.winner5ImageView.isHidden = false
            
            UIView.animate(withDuration: 0.5) {
                
                self.round1View.winner5ImageView.alpha = 1
                
            }
            
            
        }
        
        GenericAlert.genericAlert(self, title: "Are you sure you want \(self.fighters[4].name) to be the winner of this battle?", message: "", actions: [cancelAction, yesAction])
        
    }
    
    //------------------------- 6 -----------------------------
    
    @objc func fighter6Action() {
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .default) { (alert) in
            
            return
            
        }
        
        let yesAction = UIAlertAction(title: "Yes", style: .default) { (alert) in
            self.round1View.fighter5ImageView.alpha = 0.3
            self.round1View.fighter5View.alpha = 0.3
            self.round1View.fighter5Label.alpha = 0.3
            self.round1View.fighter5Button.isUserInteractionEnabled = false
            self.round1View.fighter6Button.isUserInteractionEnabled = false
            self.round1View.versus3ImageView.isHidden = true
            self.round1View.winner6ImageView.isHidden = false
            
            UIView.animate(withDuration: 0.5) {
                
                self.round1View.winner6ImageView.alpha = 1
                
            }
            
            
        }
        
        GenericAlert.genericAlert(self, title: "Are you sure you want \(self.fighters[5].name) to be the winner of this battle?", message: "", actions: [cancelAction, yesAction])
        
    }
    
    //------------------------- 7 -----------------------------
    
    @objc func fighter7Action() {
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .default) { (alert) in
            
            return
            
        }
        
        let yesAction = UIAlertAction(title: "Yes", style: .default) { (alert) in
            self.round1View.fighter8ImageView.alpha = 0.3
            self.round1View.fighter8View.alpha = 0.3
            self.round1View.fighter8Label.alpha = 0.3
            self.round1View.fighter8Button.isUserInteractionEnabled = false
            self.round1View.fighter7Button.isUserInteractionEnabled = false
            self.round1View.versus4ImageView.isHidden = true
            self.round1View.winner7ImageView.isHidden = false
            
            UIView.animate(withDuration: 0.5) {
                
                self.round1View.winner7ImageView.alpha = 1
                
            }
            
            
        }
        
        GenericAlert.genericAlert(self, title: "Are you sure you want \(self.fighters[6].name) to be the winner of this battle?", message: "", actions: [cancelAction, yesAction])
        
    }
    
    //------------------------- 8 -----------------------------
    
    @objc func fighter8Action() {
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .default) { (alert) in
            
            return
            
        }
        
        let yesAction = UIAlertAction(title: "Yes", style: .default) { (alert) in
            self.round1View.fighter7ImageView.alpha = 0.3
            self.round1View.fighter7View.alpha = 0.3
            self.round1View.fighter7Label.alpha = 0.3
            self.round1View.fighter7Button.isUserInteractionEnabled = false
            self.round1View.fighter8Button.isUserInteractionEnabled = false
            self.round1View.versus4ImageView.isHidden = true
            self.round1View.winner8ImageView.isHidden = false
            
            UIView.animate(withDuration: 0.5) {
                
                self.round1View.winner8ImageView.alpha = 1
                
            }
            
            
        }
        
        GenericAlert.genericAlert(self, title: "Are you sure you want \(self.fighters[7].name) to be the winner of this battle?", message: "", actions: [cancelAction, yesAction])
        
    }
    
}




