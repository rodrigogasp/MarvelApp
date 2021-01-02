//
//  LoadingPopUp.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 29/12/20.


import UIKit
import Gifu

class LoadingPopup: UIView {
    
    /* **************************************************************************************************
     **
     **  MARK: Variables declaration
     **
     ****************************************************************************************************/
    
    var logoImageView : GIFImageView!
    
    var loadingLabel : UILabel!
    
    var timer : Timer?
    
    var numberOfTimer = 1
    
    /* **************************************************************************************************
     **
     **  MARK: Init
     **
     ****************************************************************************************************/
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let width = frame.size.width
        let height = frame.size.height
        
        self.backgroundColor = .clear
        
        var yPosition = CGFloat(0)
        
        //------------------------- Background Image ----------------------------------
        
        let backgroundImage = UIImageView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        backgroundImage.image = UIImage(named: "")
        backgroundImage.contentMode = .scaleAspectFill
        
        addSubview(backgroundImage)
        
        //---------------------------- Logo Image View --------------------------------
        
        logoImageView = GIFImageView(frame: CGRect(x: 0, y: height*0.1, width: width*0.8, height: height*0.5))
        logoImageView.contentMode = .scaleAspectFit
        logoImageView.center.x = width/2
        
        addSubview(logoImageView)
        
        yPosition = logoImageView.frame.origin.y + logoImageView.frame.size.height + 15
        
        //------------------------------- Text Label ---------------------------------
        
        loadingLabel = UILabel(frame: CGRect(x: 0, y: height*0.6, width: width*0.9, height: height*0.3))
        loadingLabel.text = "Carregando" + " ."
        loadingLabel.textAlignment = .left
        loadingLabel.textColor = .white
        loadingLabel.sizeToFit()
        loadingLabel.center.x = width/2
        loadingLabel.frame.size.width += (width*0.9 - loadingLabel.frame.size.width)/2
        loadingLabel.frame.size.height = height*0.3
        
        addSubview(loadingLabel)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /* **************************************************************************************************
    **
    **  MARK: Start Animate
    **
    ****************************************************************************************************/
    
    func startAnimate() {
        
        logoImageView.animate(withGIFNamed: "loading")
        
        numberOfTimer = 1
        
        timer = Timer.scheduledTimer(timeInterval: 0.25, target: self, selector: #selector(changeTextTimer), userInfo: nil, repeats: true)
        
        timer!.fire()
        
    }
    
    /* **************************************************************************************************
    **
    **  MARK: Stop Animate
    **
    ****************************************************************************************************/
    
    func stopAnimate() {
        
        timer?.invalidate()
        
        timer = nil
        
    }
    
    /* **************************************************************************************************
    **
    **  MARK: Change Text Timer
    **
    ****************************************************************************************************/
    
    @objc func changeTextTimer() {
        
        numberOfTimer = numberOfTimer + 1
        
        switch numberOfTimer {
            
        case 2:
            loadingLabel.text = "Loading" + " .."
            
        case 3:
            loadingLabel.text = "Loading" + " ..."
            
        default:
            loadingLabel.text = "Loading" + " ."
            
        }
        
        if numberOfTimer > 3 {
            
            numberOfTimer = 1
            
        }
        
    }
    
}

