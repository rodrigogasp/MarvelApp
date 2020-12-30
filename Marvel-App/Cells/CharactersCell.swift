//
//  CharactersCell.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 30/12/20.
//

import UIKit

class CharactersCell: UITableViewCell {
    
    /* **************************************************************************************************
     **
     **  MARK: Variables declaration
     **
     ****************************************************************************************************/
    
    var mainText : UILabel!
    
    var cardView : UIView!
    
    var backView : UIView!
    
    var imageViewview : UIImageView!
    
    /* **************************************************************************************************
     **
     **  MARK: Init
     **
     ***************************************************************************************************/
    
    init(view: UIView) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: nil)
        
        let width = view.frame.size.width
        
        let height : CGFloat = 200
        
        self.backgroundColor = UIColor.clear
        
        self.selectionStyle = .none
        
        //---------------------------Card View-----------------------------
        
        cardView = CardView(frame: CGRect(x: 0, y: 0, width: width*0.7, height: height))
        cardView.center.x = width/2
        cardView.backgroundColor = .bronzeTabBar()
        cardView.layer.cornerRadius = 5
        
        addSubview(cardView)
        
        //---------------------------Image View View-----------------------------
        
        imageViewview = UIImageView(frame: CGRect(x: 0, y: 0, width: width*0.7, height: 150))
        imageViewview.contentMode = .scaleAspectFill
        imageViewview.clipsToBounds = true
        imageViewview.center.x = width/2
        imageViewview.layer.cornerRadius = 5
        imageViewview.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        
        addSubview(imageViewview)
        
        //---------------------------Text-----------------------------
        
        mainText = UILabel(frame: CGRect(x: 0, y: 160, width: width*0.65, height: 30))
        mainText.textColor = .marvelBack()
        mainText.font = UIFont.defaultFont(size: 24, type: .regular)
        mainText.center.x = width/2
        mainText.textAlignment = .center
        mainText.adjustsFontSizeToFitWidth = true
        
        addSubview(mainText)

        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


