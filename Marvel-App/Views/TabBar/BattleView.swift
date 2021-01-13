//
//  BattleView.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 12/01/21.
//



import UIKit

class BattleView: UIView {
    
    /* ********************************************************************************
     **
     **  MARK: Variables Declaration
     **
     **********************************************************************************/
    
    var scrollView: UIScrollView!
    
    var battleBackground : UIImageView!
    
    var degradeView : UIImageView!
    
    var battleButton : UIButton!
    
    var rankingButton : UIButton!
    
    var cardView : CardView!
    
    var cardView2 : CardView!
    
    /* ******************************************************************************
     **
     **  MARK: Init
     **
     ********************************************************************************/
    
    init(view: UIView, parent: UIViewController) {
        super.init(frame: view.frame);
        
        view.backgroundColor = .white
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        var yPosition = height*0.13
        
        //------------------------- BattleBackground -----------------------------
        
        battleBackground = UIImageView(frame: UIScreen.main.bounds)
        battleBackground.contentMode = .scaleAspectFill
        battleBackground.image = UIImage(named: "battleBackground")
        battleBackground.alpha = 0
        
        view.insertSubview(battleBackground, at: 0)
        
        //------------------------- Scroll View -----------------------------
        
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: width, height: height - parent.tabBarController!.tabBar.frame.height))
        scrollView.isScrollEnabled = true
        scrollView.backgroundColor = .clear
        
        view.addSubview(scrollView)
        
        //------------------------- Degrade View -----------------------------
        
        degradeView = UIImageView(frame: CGRect(x: 0, y: 0, width: width, height: height - parent.tabBarController!.tabBar.frame.height))
        degradeView.contentMode = .scaleAspectFill
        degradeView.image = UIImage(named: "degrade1")
        
        scrollView.addSubview(degradeView)
        
        //------------------------- CardView -----------------------------
        
        cardView = CardView(frame: CGRect(x: 0, y: 0, width: width*0.6, height: 50))
        cardView.backgroundColor = .clear
        cardView.layer.cornerRadius = cardView.frame.height/2
        cardView.frame.origin.x = 0 - width/2
        cardView.center.y = height/2 - 50
        
        scrollView.addSubview(cardView)
        
        //------------------------- Battle Button -----------------------------
        
        battleButton = UIButton(frame: CGRect(x: 0, y: 0, width: width*0.6, height: 50))
        battleButton.backgroundColor = .buttonsColor()
        battleButton.setTitle("New tournament", for: .normal)
        battleButton.setTitleColor(.black, for: .normal)
        battleButton.frame.origin.x = 0 - width/2
        battleButton.center.y = height/2 - 50
        battleButton.layer.cornerRadius = battleButton.frame.height/2
        battleButton.titleLabel?.font = UIFont.defaultFont(size: 18, type: .bold)
        
        scrollView.addSubview(battleButton)
        
        //------------------------- CardView 2 -----------------------------
        
        cardView2 = CardView(frame: CGRect(x: 0, y: 0, width: width*0.6, height: 50))
        cardView2.backgroundColor = .clear
        cardView2.layer.cornerRadius = cardView2.frame.height/2
        cardView2.frame.origin.x = width + width/2
        cardView2.center.y = height/2 + 50
        
        scrollView.addSubview(cardView2)
        
        //------------------------- Ranking Button -----------------------------
        
        rankingButton = UIButton(frame: CGRect(x: 0, y: 0, width: width*0.6, height: 50))
        rankingButton.backgroundColor = .buttonsColor()
        rankingButton.setTitle("Ranking", for: .normal)
        rankingButton.setTitleColor(.black, for: .normal)
        rankingButton.frame.origin.x = width + width/2
        rankingButton.center.y = height/2 + 50
        rankingButton.layer.cornerRadius = rankingButton.frame.height/2
        rankingButton.titleLabel?.font = UIFont.defaultFont(size: 18, type: .bold)
        
        scrollView.addSubview(rankingButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


