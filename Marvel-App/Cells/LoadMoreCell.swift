//
//  LoadMoreCell.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 01/01/21.
//

import UIKit

class LoadMoreCell: UITableViewCell {
    
    /* **************************************************************************************************
     **
     **  MARK: Variables declaration
     **
     ****************************************************************************************************/
    
    var loadButton : UIButton!
    
    /* **************************************************************************************************
     **
     **  MARK: Init
     **
     ***************************************************************************************************/
    
    init(view: UIView) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: nil)
        
        let width = view.frame.size.width
        
        self.backgroundColor = UIColor.clear
        
        self.selectionStyle = .none
        
        //--------------------------- Load Button -----------------------------
        
        loadButton = UIButton(frame: CGRect(x: 0, y: 10, width: width*0.6, height: 50))
        loadButton.setTitle("Carregar mais", for: .normal)
        loadButton.setTitleColor(.white, for: .normal)
        loadButton.titleLabel?.font = UIFont.defaultFont(size: 20, type: .regular)
        loadButton.center.x = width/2
        loadButton.backgroundColor = .clear
        loadButton.layer.borderWidth = 1
        loadButton.layer.borderColor = UIColor.white.cgColor
        loadButton.isUserInteractionEnabled = true
        
        contentView.addSubview(loadButton)

        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}



