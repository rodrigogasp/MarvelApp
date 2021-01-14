//
//  BattleVC.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 12/01/21.
//


import UIKit
import SDWebImage

class BattleVC: UIViewController  {
    
    /* **************************************************************************************************
     **
     **  MARK: Variables Declaration
     **
     ****************************************************************************************************/
    
    var battleView : BattleView!
    
    /* **************************************************************************************************
     **
     **  MARK: View
     **
     ****************************************************************************************************/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        battleView = BattleView(view: view, parent: self)
        
        battleView.battleButton.addTarget(self, action: #selector(duelsAction), for: .touchUpInside)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.battleView.battleButton.frame.origin.x = 0 - self.view.frame.width/2
        self.battleView.rankingButton.frame.origin.x = self.view.frame.width + self.view.frame.width/2
        self.battleView.cardView.frame.origin.x = 0 - self.view.frame.width/2
        self.battleView.cardView2.frame.origin.x = self.view.frame.width + self.view.frame.width/2
        self.battleView.battleBackground.alpha = 0
        
        self.parent?.tabBarController!.tabBar.barTintColor = UIColor.black.withAlphaComponent(0.5)
        
        UIView.animate(withDuration: 1.0) {
            
            self.battleView.battleBackground.alpha = 1
            
        }
        
        UIView.animate(withDuration: 1.5) {
            
            self.battleView.battleButton.center.x = self.view.frame.width/2
            self.battleView.rankingButton.center.x = self.view.frame.width/2
            self.battleView.cardView.center.x = self.view.frame.width/2
            self.battleView.cardView2.center.x = self.view.frame.width/2
            
            
        }

        
    }
                
      
    
    /* **************************************************************************************************
     **
     **  MARK: Set info
     **
     ****************************************************************************************************/
    
    func setInfo() {
        
        
    }
    
    /* **************************************************************************************************
     **
     **  MARK: Back Action
     **
     ****************************************************************************************************/
    
    @objc func backAction() {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @objc func duelsAction() {
        
        let vc = DuelsVC()
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
}





