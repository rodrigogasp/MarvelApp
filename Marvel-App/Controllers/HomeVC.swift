//
//  HomeVC.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 29/12/20.
//

import UIKit
import SDWebImage

class HomeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    /* **************************************************************************************************
     **
     **  MARK: Variables Declaration
     **
     ****************************************************************************************************/
    
    var homeView: HomeView!

    var characters : [Character] = []
    
    /* **************************************************************************************************
     **
     **  MARK: View
     **
     ****************************************************************************************************/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeView = HomeView(view: view, parent: self)
        
        //---------------------------Delegate-----------------------------
        
        homeView.tableView.delegate = self
        homeView.tableView.dataSource = self

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.startLoading()
        
        CharactersAPI.getCharacters { (response) in
            
            if response.success {
                
                self.characters = response.characters
                
                self.homeView.tableView.reloadData()
                
                self.stopLoading()
                
            } else {
                
                print(response.erroMessage)
                
                self.stopLoading()
                
            }
            
        }
        
    }
    
    
    /* **************************************************************************************************
     **
     **  MARK: Set Info
     **
     ****************************************************************************************************/
    
    func setInfo() {
        
        
        
    }
    
    /* **************************************************************************************************
     **
     **  MARK: Table View
     **
     ****************************************************************************************************/
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        homeView.tableView.frame.size.height = CGFloat(210*self.characters.count)
        
        homeView.scrollView.contentSize = CGSize(width: homeView.scrollView.frame.width, height: homeView.tableView.frame.origin.y + homeView.tableView.frame.size.height)
        
        return self.characters.count
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 210
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = CharactersCell(view: view)
        
//        if characters[indexPath.row].name != nil {
//
//            cell.mainText.text = characters[indexPath.row].name
//
//        }
        
        let urlString = "\(characters[indexPath.row].thumbnail.path).\(characters[indexPath.row].thumbnail.type)"
        
        
        let url = URL(string: urlString)
        
        if url != nil {
            
            cell.imageViewview.sd_setImage(with: url, completed: nil)
        
        }
        
        cell.mainText.text = characters[indexPath.row].name
        
        return cell
        
    }
    
}





