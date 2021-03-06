//
//  HomeView.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 30/12/20.

import UIKit

class HomeView: UIView {

    /* ********************************************************************************
    **
    **  MARK: Variables Declaration
    **
    **********************************************************************************/

    var searchTextField : UITextField!
    
    var cleanFilterButton : UIButton!
    
    var barIcon : UIImageView!
    
    var tableView : UITableView!
    
    /* ******************************************************************************
    **
    **  MARK: Init
    **
    ********************************************************************************/

    init(view: UIView, parent: UIViewController) {
        super.init(frame: view.frame);

        view.backgroundColor = .marvelBack()
        
        let width = view.frame.size.width
        let height = view.frame.size.height - parent.tabBarController!.tabBar.frame.height
        
        var yPosition = height*0.075
        
        //------------------------- Search Text Field -----------------------------
        
        searchTextField = UITextField(frame: CGRect(x: 0, y: yPosition, width: width*0.8, height: 30))
        searchTextField.backgroundColor = .white
        searchTextField.placeholder = "Search by name"
        searchTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 30))
        searchTextField.leftViewMode = .always
        searchTextField.center.x = width/2
        searchTextField.layer.cornerRadius = searchTextField.frame.height/2
        
        view.addSubview(searchTextField)
        
        yPosition = yPosition + searchTextField.frame.height + 10
        
        
        //------------------------- Bar icon -----------------------------
        
        barIcon = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        barIcon.contentMode = .scaleAspectFit
        barIcon.clipsToBounds = true
        barIcon.center.y = searchTextField.center.y
        barIcon.frame.origin.x = searchTextField.frame.origin.x + searchTextField.frame.width*0.975 - barIcon.frame.width
        barIcon.isUserInteractionEnabled = true
        
        view.addSubview(barIcon)
        
        
        //------------------------- Clean Filter -----------------------------
        
        cleanFilterButton = UIButton(frame: CGRect(x: width*0.1, y: yPosition, width: 0, height: 0))
        cleanFilterButton.setTitle("Clean filter  X", for: .normal)
        cleanFilterButton.setTitleColor(.goldBack(), for: .normal)
        cleanFilterButton.titleLabel?.font = UIFont.defaultFont(size: 18, type: .bold)
        cleanFilterButton.sizeToFit()
        
        view.addSubview(cleanFilterButton)
        
        yPosition = yPosition + cleanFilterButton.frame.height + 15
        
        //-----------------------------Table View-------------------------------------
        
        tableView = UITableView(frame: CGRect(x: 0, y: yPosition, width: width, height: height - yPosition))
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: width*0.1, right: 0)
        tableView.isScrollEnabled = true
        
        view.addSubview(tableView)

        
    }

    required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
    }
}



