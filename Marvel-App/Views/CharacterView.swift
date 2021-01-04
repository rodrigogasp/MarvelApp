//
//  CharacterView.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 04/01/21.



import UIKit

class CharacterView: UIView {
    
    /* ********************************************************************************
     **
     **  MARK: Variables Declaration
     **
     **********************************************************************************/
    
    var scrollView: UIScrollView!
    
    var backButton : UIButton!
    
    var nameLabel : UILabel!
    
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
        
        var yPosition = height*0.02
        
        //------------------------- Scroll View -----------------------------
        
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        scrollView.isScrollEnabled = true
        scrollView.backgroundColor = .marvelBack()
        
        view.addSubview(scrollView)
        
        //------------------------- Back Image View -----------------------------
        
        backButton = UIButton(frame: CGRect(x: width*0.05, y: yPosition, width: 25, height: 25))
        backButton.setImage(UIImage(named: "back"), for: .normal)
        backButton.imageView?.contentMode = .scaleAspectFit

        scrollView.addSubview(backButton)
        
        //------------------------- Name-----------------------------
        
        nameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: width*0.9, height: 30))
        nameLabel.textColor = .goldBack()
        nameLabel.font = UIFont.defaultFont(size: 24, type: .regular)
        nameLabel.center.x = width/2
        nameLabel.textAlignment = .center
        nameLabel.center.y = backButton.center.y
        
        scrollView.addSubview(nameLabel)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


