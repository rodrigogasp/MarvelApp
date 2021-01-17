//
//  DuelsView.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 13/01/21.
//

import UIKit

class DuelsView: UIView {
    
    /* ********************************************************************************
     **
     **  MARK: Variables Declaration
     **
     **********************************************************************************/
    
    var scrollView: UIScrollView!
    
    var startButton : UIButton!
    
    var rulesLabel : UILabel!
    
    var rulesContentLabel : UILabel!
    
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
        
        //------------------------- Rules Label -----------------------------
        
        rulesLabel = UILabel(frame: CGRect(x: 0, y: yPosition, width: 0, height: 0))
        rulesLabel.text = "Rules".uppercased()
        rulesLabel.textColor = .goldBack()
        rulesLabel.font = UIFont.defaultFont(size: 24, type: .bold)
        rulesLabel.sizeToFit()
        rulesLabel.center.x = width/2
        
        scrollView.addSubview(rulesLabel)
        
        yPosition = yPosition + rulesLabel.frame.height + 20
        
        //------------------------- Rules Content Label ---------------------------------------
        
        rulesContentLabel = UILabel(frame: CGRect(x: width*0.05, y: yPosition, width: width*0.9, height: 0))
        rulesContentLabel.text = "Eight characters will be drawn at random, as well as their respective duels. You must choose the winner of each duel and proceed to the next phase, until only the winner remains. Click the button below to start your fun!"
        rulesContentLabel.textColor = .goldBack()
        rulesContentLabel.font = UIFont.defaultFont(size: 20, type: .regular)
        rulesContentLabel.numberOfLines = 0
        rulesContentLabel.lineBreakMode = .byWordWrapping
        rulesContentLabel.textAlignment = .justified
        rulesContentLabel.sizeToFit()
        
        scrollView.addSubview(rulesContentLabel)
        
        yPosition = yPosition + rulesContentLabel.frame.height + 40
        
        //------------------------- Start Button ---------------------------------------
        
        startButton = UIButton(frame: CGRect(x: 0, y: yPosition, width: width*0.9, height: 60))
        startButton.setTitle("Start", for: .normal)
        startButton.setTitleColor(.marvelBack(), for: .normal)
        startButton.backgroundColor = .goldBack()
        startButton.layer.cornerRadius = startButton.frame.height/2
        startButton.center.x = width/2
        
        scrollView.addSubview(startButton)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


