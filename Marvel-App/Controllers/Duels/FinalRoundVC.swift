//
//  FinalRoundVC.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 28/01/21.
//

import UIKit

class FinalRoundVC: UIViewController {
    
    /* **************************************************************************************************
     **
     **  MARK: Variables Declaration
     **
     ****************************************************************************************************/
    
    var finalRoundView : FinalRoundView!
    
    var fighters : [Character] = []
    
    var winner : Character!
    
    var winnerPopup : WinnerPopUp!
    
    var visualEffectView: UIVisualEffectView!
    
    var viewAdded : UIView!
    
    /* **************************************************************************************************
     **
     **  MARK: View
     **
     ****************************************************************************************************/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        finalRoundView = FinalRoundView(view: view, parent: self)
        
        finalRoundView.fighter1Button.addTarget(self, action: #selector(fighter1Action), for: .touchUpInside)
        finalRoundView.fighter2Button.addTarget(self, action: #selector(fighter2Action), for: .touchUpInside)
        
        //------------------Add Social Media Pop Up------------------
        winnerPopup = WinnerPopUp(frame: CGRect(x: view.frame.width*0.05, y: 0, width: view.frame.width*0.9, height: view.frame.height*0.6))


        winnerPopup.center.y = view.center.y
        
        //------------------------- Visual Effect -------------------------------

        visualEffectView = UIVisualEffectView()
        visualEffectView.backgroundColor = .black
        visualEffectView.alpha = 0.75
        visualEffectView.frame = view.bounds
        visualEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        visualEffectView.isUserInteractionEnabled = true
        
        let tapVisual = UITapGestureRecognizer(target: self, action: #selector(closeView))

        visualEffectView.addGestureRecognizer(tapVisual)
        
    
        
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
            
            finalRoundView.fighter1ImageView.sd_setImage(with: url, completed: nil)
            
        }
        
        finalRoundView.fighter1Label.text = fighters[0].name
        
        //------------------------- 2 -----------------------------
        
        url = URL(string: "\(self.fighters[1].thumbnail.path).\(self.fighters[1].thumbnail.type)")
        
        if url != nil {
            
            finalRoundView.fighter2ImageView.sd_setImage(with: url, completed: nil)
            
        }
        
        finalRoundView.fighter2Label.text = fighters[1].name

        
        
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
            self.finalRoundView.fighter2ImageView.alpha = 0.3
            self.finalRoundView.fighter2View.alpha = 0.3
            self.finalRoundView.fighter2Label.alpha = 0.3
            self.finalRoundView.fighter2Button.isUserInteractionEnabled = false
            self.finalRoundView.fighter1Button.isUserInteractionEnabled = false
            self.finalRoundView.versus1ImageView.isHidden = true
            self.finalRoundView.winner1ImageView.isHidden = false
            
            self.winner = self.fighters[0]
            
            UIView.animate(withDuration: 0.5) {
                
                self.finalRoundView.winner1ImageView.alpha = 1
                
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                
                self.winnerPopup.nameLabel.text = self.winner.name
                
                var url = URL(string: "\(self.winner.thumbnail.path).\(self.winner.thumbnail.type)")
                
                if url != nil {
                    
                    self.winnerPopup.characterImage.sd_setImage(with: url, completed: nil)
                    
                }
                
                self.openWinnerPopUp()
                
            }
            
            
        }
        
        GenericAlert.genericAlert(self, title: "Are you sure you want \(self.fighters[0].name) to be the winner of this tournament?", message: "", actions: [cancelAction, yesAction])
        
    }
    
    //------------------------- 2 -----------------------------
    
    @objc func fighter2Action() {
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .default) { (alert) in
            
            return
            
        }
        
        let yesAction = UIAlertAction(title: "Yes", style: .default) { (alert) in
            self.finalRoundView.fighter1ImageView.alpha = 0.3
            self.finalRoundView.fighter1View.alpha = 0.3
            self.finalRoundView.fighter1Label.alpha = 0.3
            self.finalRoundView.fighter1Button.isUserInteractionEnabled = false
            self.finalRoundView.fighter2Button.isUserInteractionEnabled = false
            self.finalRoundView.versus1ImageView.isHidden = true
            self.finalRoundView.winner2ImageView.isHidden = false
            
            UIView.animate(withDuration: 0.5) {
                
                self.finalRoundView.winner2ImageView.alpha = 1
                
            }
            
            
        }
        
        GenericAlert.genericAlert(self, title: "Are you sure you want \(self.fighters[1].name) to be the winner of this tournament?", message: "", actions: [cancelAction, yesAction])
        
    }
    
    /* *********************************************************************************
    **
    **  MARK: Open Social Media Pop Up
    **
    ***********************************************************************************/

    @objc func openWinnerPopUp() {
        
        if viewAdded == nil {
            
            self.animatingOpenView(addView: winnerPopup)
            
        }
        
    }
    
    /* *********************************************************************************
     **
     **  MARK: Animating Open View
     **
     ***********************************************************************************/

    @objc func animatingOpenView(addView : UIView) {

        view.addSubview(visualEffectView)
        
        self.view.addSubview(addView)

        self.viewAdded = addView

        addView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
        addView.alpha = 0

        UIView.animate(withDuration: 0.4) {
            addView.alpha = 1
            addView.transform = CGAffineTransform.identity
        }

    }
    
    /* *********************************************************************************
     **
     **  MARK: Animating Close View
     **
     ***********************************************************************************/

    func animatingCloseView(removeView : UIView) {

        let effect = self.visualEffectView.effect

        UIView.animate(withDuration: 0.3, animations: {
            removeView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
            removeView.alpha = 0

            self.visualEffectView.effect = nil
            self.visualEffectView.removeFromSuperview()
            self.visualEffectView.effect = effect

        }) { (success:Bool) in

            removeView.removeFromSuperview()

            self.viewAdded = nil


        }

    }
    
    /* *************************************************************************************
    **
    **  MARK: Close View
    **
    ***************************************************************************************/
    @objc func closeView() {
        if viewAdded != nil {

            self.animatingCloseView(removeView: viewAdded)

        }
    }
    
}






