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
    var versus2ImageView : UIImageView!
    var versus3ImageView : UIImageView!
    var versus4ImageView : UIImageView!
    
    var winner1ImageView : UIImageView!
    var winner2ImageView : UIImageView!
    var winner3ImageView : UIImageView!
    var winner4ImageView : UIImageView!
    var winner5ImageView : UIImageView!
    var winner6ImageView : UIImageView!
    var winner7ImageView : UIImageView!
    var winner8ImageView : UIImageView!
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
        
        //------------------------- Fight 2 -----------------------------
        
        fighter3ImageView = UIImageView(frame: CGRect(x: width*0.05, y: yPosition, width: width*0.45, height: 150))
        fighter3ImageView.contentMode = .scaleAspectFill
        fighter3ImageView.layer.cornerRadius = fighter3ImageView.frame.height/2
        fighter3ImageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        
        scrollView.addSubview(fighter3ImageView)
        
        winner3ImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        winner3ImageView.image = UIImage(named: "winner")
        winner3ImageView.contentMode = .scaleAspectFit
        winner3ImageView.frame.origin.x = fighter3ImageView.frame.origin.x + fighter3ImageView.frame.width - winner3ImageView.frame.width - 10
        winner3ImageView.isHidden = true
        winner3ImageView.alpha = 0
        winner3ImageView.frame.origin.y = fighter3ImageView.frame.origin.y + 5
        
        scrollView.addSubview(winner3ImageView)
        
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
        fighter3Button.frame.origin.y = fighter3ImageView.frame.origin.y
        
        scrollView.addSubview(fighter3Button)
        
        fighter4ImageView = UIImageView(frame: CGRect(x: width*0.5, y: yPosition, width: width*0.45, height: 150))
        fighter4ImageView.contentMode = .scaleAspectFill
        fighter4ImageView.layer.cornerRadius = fighter4ImageView.frame.height/2
        fighter4ImageView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMaxYCorner]
        
        scrollView.addSubview(fighter4ImageView)
        
        winner4ImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        winner4ImageView.image = UIImage(named: "winner")
        winner4ImageView.contentMode = .scaleAspectFit
        winner4ImageView.frame.origin.x = fighter4ImageView.frame.origin.x + fighter4ImageView.frame.width - winner4ImageView.frame.width - 10
        winner4ImageView.isHidden = true
        winner4ImageView.alpha = 0
        winner4ImageView.frame.origin.y = fighter4ImageView.frame.origin.y + 5
        
        scrollView.addSubview(winner4ImageView)
        
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
        fighter4Button.layer.maskedCorners = [.layerMaxXMaxYCorner]
        fighter4Button.frame.origin.y = fighter4ImageView.frame.origin.y
        
        scrollView.addSubview(fighter4Button)
        
        versus2ImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        versus2ImageView.image = UIImage(named: "versus")
        versus2ImageView.contentMode = .scaleAspectFit
        versus2ImageView.center.x = width/2
        versus2ImageView.center.y = fighter3ImageView.center.y
        
        scrollView.addSubview(versus2ImageView)
        
        yPosition = yPosition + fighter4Button.frame.height + 50
        
        //------------------------- Fight 3 -----------------------------
        
        fighter5ImageView = UIImageView(frame: CGRect(x: width*0.05, y: yPosition, width: width*0.45, height: 150))
        fighter5ImageView.contentMode = .scaleAspectFill
        fighter5ImageView.layer.cornerRadius = fighter5ImageView.frame.height/2
        fighter5ImageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        
        scrollView.addSubview(fighter5ImageView)
        
        winner5ImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        winner5ImageView.image = UIImage(named: "winner")
        winner5ImageView.contentMode = .scaleAspectFit
        winner5ImageView.frame.origin.x = fighter5ImageView.frame.origin.x + fighter5ImageView.frame.width - winner5ImageView.frame.width - 10
        winner5ImageView.isHidden = true
        winner5ImageView.alpha = 0
        winner5ImageView.frame.origin.y = fighter5ImageView.frame.origin.y + 5
        
        scrollView.addSubview(winner5ImageView)
        
        fighter5View = UIView(frame: CGRect(x: width*0.05, y: 0, width: width*0.45, height: 50))
        fighter5View.backgroundColor = .goldBack()
        fighter5View.layer.cornerRadius = 12
        fighter5View.layer.maskedCorners = [.layerMinXMaxYCorner]
        fighter5View.frame.origin.y = yPosition + fighter5ImageView.frame.height
        
        scrollView.addSubview(fighter5View)
        
        fighter5Label = UILabel(frame: CGRect(x: 0, y: 0, width: width*0.4, height: 45))
        fighter5Label.textColor = .black
        fighter5Label.font = UIFont.defaultFont(size: 16, type: .regular)
        fighter5Label.numberOfLines = 0
        fighter5Label.lineBreakMode = .byWordWrapping
        fighter5Label.textAlignment = .center
        fighter5Label.center.x = fighter5View.center.x
        fighter5Label.center.y = fighter5View.center.y
        
        scrollView.addSubview(fighter5Label)
        
        fighter5Button = UIButton(frame: CGRect(x: width*0.05, y: yPosition, width: width*0.45, height: 200))
        fighter5Button.backgroundColor = .clear
        fighter5Button.layer.cornerRadius = 12
        fighter5Button.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        fighter5Button.frame.origin.y = fighter5ImageView.frame.origin.y
        
        scrollView.addSubview(fighter5Button)
        
        fighter6ImageView = UIImageView(frame: CGRect(x: width*0.5, y: yPosition, width: width*0.45, height: 150))
        fighter6ImageView.contentMode = .scaleAspectFill
        fighter6ImageView.layer.cornerRadius = fighter6ImageView.frame.height/2
        fighter6ImageView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMaxYCorner]
        
        scrollView.addSubview(fighter6ImageView)
        
        winner6ImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        winner6ImageView.image = UIImage(named: "winner")
        winner6ImageView.contentMode = .scaleAspectFit
        winner6ImageView.frame.origin.x = fighter6ImageView.frame.origin.x + fighter6ImageView.frame.width - winner6ImageView.frame.width - 10
        winner6ImageView.isHidden = true
        winner6ImageView.alpha = 0
        winner6ImageView.frame.origin.y = fighter6ImageView.frame.origin.y + 5
        
        scrollView.addSubview(winner6ImageView)
        
        fighter6View = UIView(frame: CGRect(x: width*0.5, y: 0, width: width*0.45, height: 50))
        fighter6View.backgroundColor = .goldBack()
        fighter6View.layer.cornerRadius = 12
        fighter6View.layer.maskedCorners = [.layerMaxXMaxYCorner]
        fighter6View.frame.origin.y = yPosition + fighter6ImageView.frame.height
        
        scrollView.addSubview(fighter6View)
        
        fighter6Label = UILabel(frame: CGRect(x: 0, y: 0, width: width*0.4, height: 45))
        fighter6Label.textColor = .black
        fighter6Label.font = UIFont.defaultFont(size: 16, type: .regular)
        fighter6Label.numberOfLines = 0
        fighter6Label.lineBreakMode = .byWordWrapping
        fighter6Label.textAlignment = .center
        fighter6Label.center.x = fighter6View.center.x
        fighter6Label.center.y = fighter6View.center.y
        
        scrollView.addSubview(fighter6Label)
        
        fighter6Button = UIButton(frame: CGRect(x: width*0.5, y: yPosition, width: width*0.45, height: 200))
        fighter6Button.backgroundColor = .clear
        fighter6Button.layer.cornerRadius = 12
        fighter6Button.layer.maskedCorners = [.layerMaxXMaxYCorner]
        fighter6Button.frame.origin.y = fighter6ImageView.frame.origin.y
        
        scrollView.addSubview(fighter6Button)
        
        versus3ImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        versus3ImageView.image = UIImage(named: "versus")
        versus3ImageView.contentMode = .scaleAspectFit
        versus3ImageView.center.x = width/2
        versus3ImageView.center.y = fighter5ImageView.center.y
        
        scrollView.addSubview(versus3ImageView)
        
        yPosition = yPosition + fighter6Button.frame.height + 50
        
        //------------------------- Fight 4 -----------------------------
        
        fighter7ImageView = UIImageView(frame: CGRect(x: width*0.05, y: yPosition, width: width*0.45, height: 150))
        fighter7ImageView.contentMode = .scaleAspectFill
        fighter7ImageView.layer.cornerRadius = fighter7ImageView.frame.height/2
        fighter7ImageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        
        scrollView.addSubview(fighter7ImageView)
        
        winner7ImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        winner7ImageView.image = UIImage(named: "winner")
        winner7ImageView.contentMode = .scaleAspectFit
        winner7ImageView.frame.origin.x = fighter7ImageView.frame.origin.x + fighter7ImageView.frame.width - winner7ImageView.frame.width - 10
        winner7ImageView.isHidden = true
        winner7ImageView.alpha = 0
        winner7ImageView.frame.origin.y = fighter7ImageView.frame.origin.y + 5
        
        scrollView.addSubview(winner7ImageView)
        
        fighter7View = UIView(frame: CGRect(x: width*0.05, y: 0, width: width*0.45, height: 50))
        fighter7View.backgroundColor = .goldBack()
        fighter7View.layer.cornerRadius = 12
        fighter7View.layer.maskedCorners = [.layerMinXMaxYCorner]
        fighter7View.frame.origin.y = yPosition + fighter7ImageView.frame.height
        
        scrollView.addSubview(fighter7View)
        
        fighter7Label = UILabel(frame: CGRect(x: 0, y: 0, width: width*0.4, height: 45))
        fighter7Label.textColor = .black
        fighter7Label.font = UIFont.defaultFont(size: 16, type: .regular)
        fighter7Label.numberOfLines = 0
        fighter7Label.lineBreakMode = .byWordWrapping
        fighter7Label.textAlignment = .center
        fighter7Label.center.x = fighter7View.center.x
        fighter7Label.center.y = fighter7View.center.y
        
        scrollView.addSubview(fighter7Label)
        
        fighter7Button = UIButton(frame: CGRect(x: width*0.05, y: yPosition, width: width*0.45, height: 200))
        fighter7Button.backgroundColor = .clear
        fighter7Button.layer.cornerRadius = 12
        fighter7Button.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        fighter7Button.frame.origin.y = fighter7ImageView.frame.origin.y
        
        scrollView.addSubview(fighter7Button)
        
        fighter8ImageView = UIImageView(frame: CGRect(x: width*0.5, y: yPosition, width: width*0.45, height: 150))
        fighter8ImageView.contentMode = .scaleAspectFill
        fighter8ImageView.layer.cornerRadius = fighter8ImageView.frame.height/2
        fighter8ImageView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMaxYCorner]
        
        scrollView.addSubview(fighter8ImageView)
        
        winner8ImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        winner8ImageView.image = UIImage(named: "winner")
        winner8ImageView.contentMode = .scaleAspectFit
        winner8ImageView.frame.origin.x = fighter8ImageView.frame.origin.x + fighter8ImageView.frame.width - winner8ImageView.frame.width - 10
        winner8ImageView.isHidden = true
        winner8ImageView.alpha = 0
        winner8ImageView.frame.origin.y = fighter8ImageView.frame.origin.y + 5
        
        scrollView.addSubview(winner8ImageView)
        
        fighter8View = UIView(frame: CGRect(x: width*0.5, y: 0, width: width*0.45, height: 50))
        fighter8View.backgroundColor = .goldBack()
        fighter8View.layer.cornerRadius = 12
        fighter8View.layer.maskedCorners = [.layerMaxXMaxYCorner]
        fighter8View.frame.origin.y = yPosition + fighter8ImageView.frame.height
        
        scrollView.addSubview(fighter8View)
        
        fighter8Label = UILabel(frame: CGRect(x: 0, y: 0, width: width*0.4, height: 45))
        fighter8Label.textColor = .black
        fighter8Label.font = UIFont.defaultFont(size: 16, type: .regular)
        fighter8Label.numberOfLines = 0
        fighter8Label.lineBreakMode = .byWordWrapping
        fighter8Label.textAlignment = .center
        fighter8Label.center.x = fighter8View.center.x
        fighter8Label.center.y = fighter8View.center.y
        
        scrollView.addSubview(fighter8Label)
        
        fighter8Button = UIButton(frame: CGRect(x: width*0.5, y: 0, width: width*0.45, height: 200))
        fighter8Button.backgroundColor = .clear
        fighter8Button.layer.cornerRadius = 12
        fighter8Button.layer.maskedCorners = [.layerMaxXMaxYCorner]
        fighter8Button.frame.origin.y = fighter8ImageView.frame.origin.y
        
        scrollView.addSubview(fighter8Button)
        
        versus4ImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        versus4ImageView.image = UIImage(named: "versus")
        versus4ImageView.contentMode = .scaleAspectFit
        versus4ImageView.center.x = width/2
        versus4ImageView.center.y = fighter7ImageView.center.y
        
        scrollView.addSubview(versus4ImageView)
        
        scrollView.contentSize = CGSize(width: width, height: yPosition + 200 + 20)
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}



