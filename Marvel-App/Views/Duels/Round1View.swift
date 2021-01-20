//
//  Round1View.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 19/01/21.
//


import UIKit

class Round1View: UIView {
    
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
    
    var fighter3ImageView : UIImageView!
    var fighter3Label : UILabel!
    var fighter3Button : UIButton!
    var fighter3View : UIView!
    
    var fighter4ImageView : UIImageView!
    var fighter4Label : UILabel!
    var fighter4Button : UIButton!
    var fighter4View : UIView!
    
    var fighter5ImageView : UIImageView!
    var fighter5Label : UILabel!
    var fighter5Button : UIButton!
    var fighter5View : UIView!
    
    var fighter6ImageView : UIImageView!
    var fighter6Label : UILabel!
    var fighter6Button : UIButton!
    var fighter6View : UIView!
    
    var fighter7ImageView : UIImageView!
    var fighter7Label : UILabel!
    var fighter7Button : UIButton!
    var fighter7View : UIView!
    
    var fighter8ImageView : UIImageView!
    var fighter8Label : UILabel!
    var fighter8Button : UIButton!
    var fighter8View : UIView!
    
    var duel1Button : UIButton!
    var duel2Button : UIButton!
    var duel3Button : UIButton!
    var duel4Button : UIButton!
    
    var versus1ImageView : UIImageView!
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
        
        //------------------------- Scroll View -----------------------------
        
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: width, height: height))
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
        
        scrollView.addSubview(fighter1Button)
        
        versus1ImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 80, height: 80))
        versus1ImageView.image = UIImage(named: "versus")
        versus1ImageView.contentMode = .scaleAspectFit
        versus1ImageView.center.x = width/2
        versus1ImageView.center.y = fighter1Button.center.y
        
        scrollView.addSubview(versus1ImageView)
        
        fighter2ImageView = UIImageView(frame: CGRect(x: width*0.5, y: yPosition, width: width*0.45, height: 150))
        fighter2ImageView.contentMode = .scaleAspectFill
        fighter2ImageView.layer.cornerRadius = fighter2ImageView.frame.height/2
        fighter2ImageView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMaxYCorner]
        
        scrollView.addSubview(fighter2ImageView)
        
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
        
        fighter2Button = UIButton(frame: CGRect(x: width*0.5, y: yPosition, width: width*0.45, height: 200))
        fighter2Button.backgroundColor = .clear
        fighter2Button.layer.cornerRadius = 12
        fighter2Button.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMaxYCorner]
        
        scrollView.addSubview(fighter2Button)
        
        yPosition = yPosition + fighter2Button.frame.height + 50
        
        //------------------------- Fight 2 -----------------------------
        
        fighter3ImageView = UIImageView(frame: CGRect(x: width*0.05, y: yPosition, width: width*0.45, height: 150))
        fighter3ImageView.contentMode = .scaleAspectFill
        fighter3ImageView.layer.cornerRadius = fighter3ImageView.frame.height/2
        fighter3ImageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        
        scrollView.addSubview(fighter3ImageView)
        
        fighter3View = UIView(frame: CGRect(x: width*0.05, y: 0, width: width*0.45, height: 50))
        fighter3View.backgroundColor = .goldBack()
        fighter3View.layer.cornerRadius = 12
        fighter3View.layer.maskedCorners = [.layerMinXMaxYCorner]
        fighter3View.frame.origin.y = yPosition + fighter3ImageView.frame.height
        
        scrollView.addSubview(fighter3View)
        
        fighter3Label = UILabel(frame: CGRect(x: 0, y: 0, width: width*0.4, height: 45))
        fighter3Label.textColor = .black
        fighter3Label.font = UIFont.defaultFont(size: 16, type: .regular)
        fighter3Label.numberOfLines = 0
        fighter3Label.lineBreakMode = .byWordWrapping
        fighter3Label.textAlignment = .center
        fighter3Label.center.x = fighter3View.center.x
        fighter3Label.center.y = fighter3View.center.y
        
        scrollView.addSubview(fighter3Label)
        
        fighter3Button = UIButton(frame: CGRect(x: width*0.05, y: yPosition, width: width*0.45, height: 200))
        fighter3Button.backgroundColor = .clear
        fighter3Button.layer.cornerRadius = 12
        fighter3Button.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        
        scrollView.addSubview(fighter3Button)
        
        fighter4ImageView = UIImageView(frame: CGRect(x: width*0.5, y: yPosition, width: width*0.45, height: 150))
        fighter4ImageView.contentMode = .scaleAspectFill
        fighter4ImageView.layer.cornerRadius = fighter4ImageView.frame.height/2
        fighter4ImageView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMaxYCorner]
        
        scrollView.addSubview(fighter4ImageView)
        
        fighter4View = UIView(frame: CGRect(x: width*0.5, y: 0, width: width*0.45, height: 50))
        fighter4View.backgroundColor = .goldBack()
        fighter4View.layer.cornerRadius = 12
        fighter4View.layer.maskedCorners = [.layerMaxXMaxYCorner]
        fighter4View.frame.origin.y = yPosition + fighter4ImageView.frame.height
        
        scrollView.addSubview(fighter4View)
        
        fighter4Label = UILabel(frame: CGRect(x: 0, y: 0, width: width*0.4, height: 45))
        fighter4Label.textColor = .black
        fighter4Label.font = UIFont.defaultFont(size: 16, type: .regular)
        fighter4Label.numberOfLines = 0
        fighter4Label.lineBreakMode = .byWordWrapping
        fighter4Label.textAlignment = .center
        fighter4Label.center.x = fighter4View.center.x
        fighter4Label.center.y = fighter4View.center.y
        
        scrollView.addSubview(fighter4Label)
        
        fighter4Button = UIButton(frame: CGRect(x: width*0.5, y: yPosition, width: width*0.45, height: 200))
        fighter4Button.backgroundColor = .clear
        fighter4Button.layer.cornerRadius = 12
        fighter4Button.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMaxYCorner]
        
        scrollView.addSubview(fighter4Button)
        
        yPosition = yPosition + fighter4Button.frame.height + 20
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}



