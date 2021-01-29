//
//  FinalRoundView.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 28/01/21.
//


import UIKit

class FinalRoundView: UIView {
    
    /* ********************************************************************************
     **
     **  MARK: Variables Declaration
     **
     **********************************************************************************/
    
    var scrollView: UIScrollView!
    
    var backButton : UIButton!

    var fighter1ImageView : UIImageView!
    var fighter1Label : UILabel!
    var fighter1Button : UIButton!
    var fighter1View : UIView!
    
    var fighter2ImageView : UIImageView!
    var fighter2Label : UILabel!
    var fighter2Button : UIButton!
    var fighter2View : UIView!
    
    var versus1ImageView : UIImageView!
    
    var winner1ImageView : UIImageView!
    var winner2ImageView : UIImageView!

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
        
        var yPosition = height*0.5 - 200
        
        //------------------------- Scroll View -----------------------------
        
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: width, height: height - parent.tabBarController!.tabBar.frame.height))
        scrollView.isScrollEnabled = true
        scrollView.backgroundColor = .marvelBack()
        
        view.addSubview(scrollView)
        
        //------------------------- Back Button -----------------------------
        
        backButton = UIButton(frame: CGRect(x: width*0.05, y: height*0.02, width: 25, height: 25))
        backButton.setImage(UIImage(named: "back"), for: .normal)
        backButton.imageView?.contentMode = .scaleAspectFit
        
        scrollView.addSubview(backButton)
        
        //------------------------- Fight 1 -----------------------------
        
        fighter1ImageView = UIImageView(frame: CGRect(x: width*0.05, y: yPosition, width: width*0.45, height: 150))
        fighter1ImageView.contentMode = .scaleAspectFill
        fighter1ImageView.layer.cornerRadius = fighter1ImageView.frame.height/2
        fighter1ImageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        
        scrollView.addSubview(fighter1ImageView)
        
        winner1ImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        winner1ImageView.image = UIImage(named: "winner")
        winner1ImageView.contentMode = .scaleAspectFit
        winner1ImageView.frame.origin.x = fighter1ImageView.frame.origin.x + fighter1ImageView.frame.width - winner1ImageView.frame.width - 10
        winner1ImageView.isHidden = true
        winner1ImageView.alpha = 0
        winner1ImageView.frame.origin.y = fighter1ImageView.frame.origin.y + 5
        
        scrollView.addSubview(winner1ImageView)
        
        fighter1View = UIView(frame: CGRect(x: width*0.05, y: 0, width: width*0.45, height: 50))
        fighter1View.backgroundColor = .goldBack()
        fighter1View.layer.cornerRadius = 12
        fighter1View.layer.maskedCorners = [.layerMinXMaxYCorner]
        fighter1View.frame.origin.y = yPosition + fighter1ImageView.frame.height
        
        scrollView.addSubview(fighter1View)
        
        fighter1Label = UILabel(frame: CGRect(x: 0, y: 0, width: width*0.4, height: 45))
        fighter1Label.textColor = .black
        fighter1Label.font = UIFont.defaultFont(size: 16, type: .regular)
        fighter1Label.numberOfLines = 0
        fighter1Label.lineBreakMode = .byWordWrapping
        fighter1Label.textAlignment = .center
        fighter1Label.center.x = fighter1View.center.x
        fighter1Label.center.y = fighter1View.center.y
        
        scrollView.addSubview(fighter1Label)
        
        fighter1Button = UIButton(frame: CGRect(x: width*0.05, y: yPosition, width: width*0.45, height: 200))
        fighter1Button.backgroundColor = .clear
        fighter1Button.layer.cornerRadius = 12
        fighter1Button.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        fighter1Button.frame.origin.y = fighter1ImageView.frame.origin.y
        
        scrollView.addSubview(fighter1Button)
        
        fighter2ImageView = UIImageView(frame: CGRect(x: width*0.5, y: yPosition, width: width*0.45, height: 150))
        fighter2ImageView.contentMode = .scaleAspectFill
        fighter2ImageView.layer.cornerRadius = fighter2ImageView.frame.height/2
        fighter2ImageView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMaxYCorner]
        
        scrollView.addSubview(fighter2ImageView)
        
        winner2ImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        winner2ImageView.image = UIImage(named: "winner")
        winner2ImageView.contentMode = .scaleAspectFit
        winner2ImageView.frame.origin.x = fighter2ImageView.frame.origin.x + fighter2ImageView.frame.width - winner2ImageView.frame.width - 10
        winner2ImageView.isHidden = true
        winner2ImageView.alpha = 0
        winner2ImageView.frame.origin.y = fighter2ImageView.frame.origin.y + 5
        
        scrollView.addSubview(winner2ImageView)
        
        fighter2View = UIView(frame: CGRect(x: width*0.5, y: 0, width: width*0.45, height: 50))
        fighter2View.backgroundColor = .goldBack()
        fighter2View.layer.cornerRadius = 12
        fighter2View.layer.maskedCorners = [.layerMaxXMaxYCorner]
        fighter2View.frame.origin.y = yPosition + fighter2ImageView.frame.height
        
        scrollView.addSubview(fighter2View)
        
        fighter2Label = UILabel(frame: CGRect(x: 0, y: 0, width: width*0.4, height: 45))
        fighter2Label.textColor = .black
        fighter2Label.font = UIFont.defaultFont(size: 16, type: .regular)
        fighter2Label.numberOfLines = 0
        fighter2Label.lineBreakMode = .byWordWrapping
        fighter2Label.textAlignment = .center
        fighter2Label.center.x = fighter2View.center.x
        fighter2Label.center.y = fighter2View.center.y
        
        scrollView.addSubview(fighter2Label)
        
        fighter2Button = UIButton(frame: CGRect(x: width*0.5, y: 0, width: width*0.45, height: 200))
        fighter2Button.backgroundColor = .clear
        fighter2Button.layer.cornerRadius = 12
        fighter2Button.layer.maskedCorners = [.layerMaxXMaxYCorner]
        fighter2Button.frame.origin.y = fighter2ImageView.frame.origin.y
        
        scrollView.addSubview(fighter2Button)
        
        versus1ImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        versus1ImageView.image = UIImage(named: "versus")
        versus1ImageView.contentMode = .scaleAspectFit
        versus1ImageView.center.x = width/2
        versus1ImageView.center.y = fighter1ImageView.center.y
        
        scrollView.addSubview(versus1ImageView)
        
        yPosition = yPosition + fighter2Button.frame.height + 50

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}





