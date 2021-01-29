//
//  Round2VC.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 28/01/21.
//


import UIKit

class Round2VC: UIViewController {
    
    /* **************************************************************************************************
     **
     **  MARK: Variables Declaration
     **
     ****************************************************************************************************/
    
    var round2View : Round2View!
    
    var fighters : [Character] = []
    
    var winnersArray : [Character] = []
    
    /* **************************************************************************************************
     **
     **  MARK: View
     **
     ****************************************************************************************************/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        round2View = Round2View(view: view, parent: self)
        
        round2View.fighter1Button.addTarget(self, action: #selector(fighter1Action), for: .touchUpInside)
        round2View.fighter2Button.addTarget(self, action: #selector(fighter2Action), for: .touchUpInside)
        round2View.fighter3Button.addTarget(self, action: #selector(fighter3Action), for: .touchUpInside)
        round2View.fighter4Button.addTarget(self, action: #selector(fighter4Action), for: .touchUpInside)
        round2View.nextButton.addTarget(self, action: #selector(nextRoundAction), for: .touchUpInside)
    
        
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
            
            round2View.fighter1ImageView.sd_setImage(with: url, completed: nil)
            
        }
        
        round2View.fighter1Label.text = fighters[0].name
        
        //------------------------- 2 -----------------------------
        
        url = URL(string: "\(self.fighters[1].thumbnail.path).\(self.fighters[1].thumbnail.type)")
        
        if url != nil {
            
            round2View.fighter2ImageView.sd_setImage(with: url, completed: nil)
            
        }
        
        round2View.fighter2Label.text = fighters[1].name
        
        //------------------------- 3-----------------------------
        
        url = URL(string: "\(self.fighters[2].thumbnail.path).\(self.fighters[2].thumbnail.type)")
        
        if url != nil {
            
            round2View.fighter3ImageView.sd_setImage(with: url, completed: nil)
            
        }
        
        round2View.fighter3Label.text = fighters[2].name
        
        //------------------------- 4 -----------------------------
        
        url = URL(string: "\(self.fighters[3].thumbnail.path).\(self.fighters[3].thumbnail.type)")
        
        if url != nil {
            
            round2View.fighter4ImageView.sd_setImage(with: url, completed: nil)
            
        }
        
        round2View.fighter4Label.text = fighters[3].name
        
        
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
            self.round2View.fighter2ImageView.alpha = 0.3
            self.round2View.fighter2View.alpha = 0.3
            self.round2View.fighter2Label.alpha = 0.3
            self.round2View.fighter2Button.isUserInteractionEnabled = false
            self.round2View.fighter1Button.isUserInteractionEnabled = false
            self.round2View.versus1ImageView.isHidden = true
            self.round2View.winner1ImageView.isHidden = false
            
            self.winnersArray.append(self.fighters[0])
            
            UIView.animate(withDuration: 0.5) {
                
                self.round2View.winner1ImageView.alpha = 1
                
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
            self.round2View.fighter1ImageView.alpha = 0.3
            self.round2View.fighter1View.alpha = 0.3
            self.round2View.fighter1Label.alpha = 0.3
            self.round2View.fighter1Button.isUserInteractionEnabled = false
            self.round2View.fighter2Button.isUserInteractionEnabled = false
            self.round2View.versus1ImageView.isHidden = true
            self.round2View.winner2ImageView.isHidden = false
            
            self.winnersArray.append(self.fighters[1])
            
            UIView.animate(withDuration: 0.5) {
                
                self.round2View.winner2ImageView.alpha = 1
                
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
            self.round2View.fighter4ImageView.alpha = 0.3
            self.round2View.fighter4View.alpha = 0.3
            self.round2View.fighter4Label.alpha = 0.3
            self.round2View.fighter4Button.isUserInteractionEnabled = false
            self.round2View.fighter3Button.isUserInteractionEnabled = false
            self.round2View.versus2ImageView.isHidden = true
            self.round2View.winner3ImageView.isHidden = false
            
            self.winnersArray.append(self.fighters[2])
            
            UIView.animate(withDuration: 0.5) {
                
                self.round2View.winner3ImageView.alpha = 1
                
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
            self.round2View.fighter3ImageView.alpha = 0.3
            self.round2View.fighter3View.alpha = 0.3
            self.round2View.fighter3Label.alpha = 0.3
            self.round2View.fighter3Button.isUserInteractionEnabled = false
            self.round2View.fighter4Button.isUserInteractionEnabled = false
            self.round2View.versus2ImageView.isHidden = true
            self.round2View.winner4ImageView.isHidden = false
            
            self.winnersArray.append(self.fighters[3])
            
            UIView.animate(withDuration: 0.5) {
                
                self.round2View.winner4ImageView.alpha = 1
                
            }
            
            
        }
        
        GenericAlert.genericAlert(self, title: "Are you sure you want \(self.fighters[3].name) to be the winner of this battle?", message: "", actions: [cancelAction, yesAction])
        
    }

    
    /* **************************************************************************************************
     **
     **  MARK: Nexr round Action
     **
     ****************************************************************************************************/
    
    @objc func nextRoundAction() {
        
        if self.winnersArray.count != 2 {
            
            GenericAlert.genericAlert(self, title: "You must choose a winner for each battle!", message: "", actions: [])
            
            return
            
        }
        
        let vc = FinalRoundVC()
        
        vc.fighters = self.winnersArray
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}





