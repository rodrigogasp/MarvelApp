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
    
    var characterImage : UIImageView!
    
    var descriptionLabel : UILabel!
    
    var descriptionContent : UILabel!
    
    var comicsLabel : UILabel!
    
    var collectionView : UICollectionView!
    
    var collectionViewLayout : UICollectionViewFlowLayout!
    
    /* ******************************************************************************
     **
     **  MARK: Init
     **
     ********************************************************************************/
    
    init(view: UIView, parent: UIViewController) {
        super.init(frame: view.frame);
        
        view.backgroundColor = .white
        
        let width = view.frame.size.width
        let height = view.frame.size.height - parent.tabBarController!.tabBar.frame.height
        
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
        
        yPosition = yPosition + nameLabel.frame.height
        
        //------------------------- Character Image-----------------------------
        
        characterImage = UIImageView(frame: CGRect(x: 0, y: yPosition, width: width*0.6, height: width*0.8))
        characterImage.contentMode = .scaleAspectFit
        characterImage.clipsToBounds = true
        characterImage.center.x = width/2
        characterImage.layer.shadowColor = UIColor.black.cgColor
        characterImage.layer.shadowOffset = CGSize(width: 0, height: 1)
        characterImage.layer.shadowOpacity = 0.3
        characterImage.layer.shadowOffset = CGSize(width: 0, height: 2)
        
        scrollView.addSubview(characterImage)
        
        yPosition = yPosition + characterImage.frame.height + 20
        
        //------------------------- DescriptionLabel-----------------------------
        
        descriptionLabel = UILabel(frame: CGRect(x: width*0.05, y: yPosition, width: 0, height: 0))
        descriptionLabel.text = "Descrição"
        descriptionLabel.textColor = .goldBack()
        descriptionLabel.font = UIFont.defaultFont(size: 20, type: .regular)
        descriptionLabel.sizeToFit()
        
        scrollView.addSubview(descriptionLabel)
        
        yPosition = yPosition + descriptionLabel.frame.height + 10
        
        //------------------------- Description Content-----------------------------
        
        descriptionContent = UILabel(frame: CGRect(x: width*0.05, y: yPosition, width: width*0.8, height: 0))
        descriptionContent.textColor = .white
        descriptionContent.font = UIFont.defaultFont(size: 18, type: .regular)
        descriptionContent.numberOfLines = 0
        descriptionContent.lineBreakMode = .byWordWrapping
        descriptionContent.textAlignment = .justified
        
        scrollView.addSubview(descriptionContent)
        
        //----------------------------- Collection View -----------------------------------
        
        collectionViewLayout = UICollectionViewFlowLayout()
        collectionViewLayout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        collectionViewLayout.itemSize = CGSize(width: 50, height: 120)
        collectionViewLayout.scrollDirection = .horizontal
        
        collectionView = UICollectionView(frame: CGRect(x: width*0.05, y: 0, width: width*0.9, height: height*0.25), collectionViewLayout: collectionViewLayout)
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = UIColor.clear
        
        scrollView.addSubview(collectionView)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


