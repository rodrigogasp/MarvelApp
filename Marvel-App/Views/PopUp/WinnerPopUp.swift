//
//  WinnerPopUp.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 28/01/21.


import UIKit
import Gifu

class WinnerPopUp: UIView {
    
    /* **************************************************************************************************
     **
     **  MARK: Variables declaration
     **
     ****************************************************************************************************/
    
    var characterImage : UIImageView!
    
    var winnerImageView : UIImageView!
    
    var nameLabel : UILabel!
    
    var backButton : UIButton!

    /* **************************************************************************************************
     **
     **  MARK: Init
     **
     ****************************************************************************************************/
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let width = frame.size.width
        let height = frame.size.height
        
        self.backgroundColor = .white
        
        self.layer.cornerRadius = 30

        self.layer.shadowOffset.width = 0
        self.layer.shadowOffset.height = 2
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.3
        
        var yPosition = height*0.075
        
        //------------------------- Character Image -----------------------------
        
        characterImage = UIImageView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        characterImage.contentMode = .scaleAspectFill
        characterImage.clipsToBounds = true
        characterImage.alpha = 0.8
        characterImage.layer.cornerRadius = 30
        
        addSubview(characterImage)
        
        //------------------------- Nama Label -----------------------------
        
        nameLabel = UILabel(frame: CGRect(x: 0, y: yPosition, width: width*0.9 - 130, height: 50))
        nameLabel.textColor = .marvelBack()
        nameLabel.font = UIFont.defaultFont(size: 28, type: .bold)
        nameLabel.center.x = width/2
        nameLabel.numberOfLines = 0
        nameLabel.lineBreakMode = .byWordWrapping
        nameLabel.textAlignment = .center
        
        addSubview(nameLabel)
        
        //------------------------- Winner Image View-----------------------------
        
        winnerImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 120, height: 120))
        winnerImageView.image = UIImage(named: "winner")
        winnerImageView.contentMode = .scaleAspectFit
        winnerImageView.frame.origin.x = width*0.95 - winnerImageView.frame.width
        winnerImageView.frame.origin.y = height*0.1
        
        addSubview(winnerImageView)
        
        //------------------------- Back Button-----------------------------
        
        backButton = UIButton(frame: CGRect(x: 0, y: 0, width: width*0.5, height: 50))
        backButton.setTitle("Close", for: .normal)
        backButton.setTitleColor(.black, for: .normal)
        backButton.backgroundColor = .white
        backButton.center.x = width/2
        backButton.frame.origin.y = height*0.9 - backButton.frame.height
        backButton.layer.cornerRadius = backButton.frame.height/2
        
        addSubview(backButton)
 
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


