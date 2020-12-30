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

    var scrollView: UIScrollView!
    
    var tableView : UITableView!

    /* ******************************************************************************
    **
    **  MARK: Init
    **
    ********************************************************************************/

    init(view: UIView, parent: UIViewController) {
        super.init(frame: view.frame);

        view.backgroundColor = .red
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        var yPosition = CGFloat(0)
        
        
        //------------------------- Scroll View -----------------------------

        scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: width, height: height - parent.tabBarController!.tabBar.frame.height))
        scrollView.isScrollEnabled = true
        scrollView.backgroundColor = .marvelBack()

        view.addSubview(scrollView)
        
        //-----------------------------Table View-------------------------------------
        
        tableView = UITableView(frame: CGRect(x: 0, y: yPosition, width: width, height: height - yPosition))
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: width*0.1, right: 0)
        tableView.isScrollEnabled = false
        
        scrollView.addSubview(tableView)

        
    }

    required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
    }
}



