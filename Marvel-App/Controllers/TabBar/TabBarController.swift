//
//  TabBarController.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 30/12/20.


import UIKit

class TabBarController : UITabBarController {
    
    /* ***********************************************************************
    **
    **  MARK: Variables Declaration
    **
    *************************************************************************/
     
    /* ***********************************************************************
     **
     **  MARK: View
     **
     *************************************************************************/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        //--------------------- Tab Bar Tint Color --------------------------------
        
        tabBar.barTintColor = UIColor.marvelBack()
        self.tabBar.isTranslucent = false
        tabBar.unselectedItemTintColor = .white
        tabBar.tintColor = .goldBack()
        self.navigationController?.navigationBar.isHidden = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    
        setupTabBar()
        
    }
    
    /* ***********************************************************************
     **
     **  MARK: Setup Tab Bar
     **
     *************************************************************************/
    
    
    func setupTabBar(){
        
        let homeController = UINavigationController(rootViewController: HomeVC())
        homeController.isNavigationBarHidden = true
        homeController.tabBarItem.image = UIImage(named:"spiderman")
        homeController.tabBarItem.selectedImage = UIImage(named: "spiderman")?.withTintColor(UIColor.goldBack())
        
        let battleController = UINavigationController(rootViewController: BattleVC())
        battleController.isNavigationBarHidden = true
        battleController.tabBarItem.image = UIImage(named:"battle")
        battleController.tabBarItem.selectedImage = UIImage(named: "battle")?.withTintColor(UIColor.goldBack())
        battleController.tabBarItem.title = "Battles"
  
        viewControllers = [homeController, battleController]
        
    }
    
}

