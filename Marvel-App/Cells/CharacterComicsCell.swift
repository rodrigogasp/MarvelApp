//
//  CharacterComicsCell.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 11/01/21.


import UIKit

class CharacterComicsCell: UICollectionViewCell {
    
    /* **************************************************************************************************
     **
     **  MARK: Variables declaration
     **
     ****************************************************************************************************/
    
    var cardView : CardView!
    
    var comicImage : UIImageView!
    
    /* **************************************************************************************************
     **
     **  MARK: Init
     **
     ****************************************************************************************************/
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.clear
        
        let width = frame.width
        let height = frame.height
        
        var yPosition = height*0.05
        
        //------------------------Card View-----------------------------
        
        cardView = CardView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        cardView.backgroundColor = .clear
        
        addSubview(cardView)
        
        //------------------------ Comic Image -----------------------------
        
        comicImage = UIImageView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        comicImage.contentMode = .scaleToFill
        comicImage.layer.cornerRadius = 12
        
        addSubview(comicImage)
        
        
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension UIView {
  func round(corners: UIRectCorner, radius: CGFloat) {
    let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
    let mask = CAShapeLayer()
    mask.path = path.cgPath
    self.layer.mask = mask
  }
}


