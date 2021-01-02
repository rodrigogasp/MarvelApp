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
    
    var offset : Int = 0
    
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
        
        homeView.barIcon.image = UIImage(named: "search")
        
        self.title = "Characters"
        
        if self.characters.count == 0 {
            
            self.startLoading()
            
            CharactersAPI.getCharacters(offset: 0) { (response) in
                
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
        
        homeView.tableView.contentSize = CGSize(width: view.frame.width, height: homeView.tableView.frame.size.height + homeView.tableView.frame.origin.y)
        
//        homeView.scrollView.contentSize = CGSize(width: homeView.scrollView.frame.width, height: homeView.tableView.frame.origin.y + homeView.tableView.frame.size.height)
        
        return self.characters.count + 1
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == self.characters.count && self.characters.count != 0 {
            
            return 60
            
        }
        
        if self.characters.count != 0 {
            
            return 210
            
        }
        
        return 0
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == self.characters.count && self.characters.count != 0 {
            
            let cell = LoadMoreCell(view: view)
            
            return cell
            
        }
        
        if self.characters.count != 0 {
            
            let cell = CharactersCell(view: view)
            
            let urlString = "\(characters[indexPath.row].thumbnail.path).\(characters[indexPath.row].thumbnail.type)"
            
            
            let url = URL(string: urlString)
            
            if url != nil {
                
                cell.imageViewview.sd_setImage(with: url, completed: nil)
            
            }
            
            cell.mainText.text = characters[indexPath.row].name
            
            return cell
            
        }
        
        return UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == self.characters.count {
            
            self.offset += 20
            
            self.startLoading()
            
            CharactersAPI.getCharacters(offset: self.offset) { (response) in
                
                self.stopLoading()
                
                if response.success {
                    
                    self.characters.append(contentsOf: response.characters)
                    
                    self.homeView.tableView.reloadData()
                    
                }
                
            }
            
        }
        
    }
    
    
}





