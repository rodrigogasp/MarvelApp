//
//  Loading.swift
//  Marvel-App
//
//  Created by Rodrigo Gaspar on 29/12/20.


import UIKit
import ObjectiveC
import Foundation

private var spinnerKey: UInt8 = 0

extension UIViewController {
    
    var spinner: FALSpinner {
        get {
            return associatedObject(self, key: &spinnerKey)
            { return FALSpinner() } // Set the initial value of the var
        }
        set { associateObject(self, key: &spinnerKey, value: newValue) }
    }
    
    func startLoading() {
        
        spinner.viewController = self
        
        spinner.startLoading()
        
    }
    
    func stopLoading() {
        
        spinner.viewController = self
        
        spinner.stopLoading()
        
    }
    
}

class FALSpinner {
    
    var loaded: Bool! = false
    
    var loadingPopup : LoadingPopup!
    
    var viewController : UIViewController!
    
    var visualEffectView: UIVisualEffectView!
    
    var viewAdded : UIView!
    
    init() {
        
    }

    func componentInit() {
        
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height
        
        //--------------------- Loading Card --------------------------------
        
        let cardWidth = width*0.5
        
        loadingPopup = LoadingPopup(frame: CGRect(x: 0, y: 0, width: cardWidth, height: cardWidth*1.277))
        loadingPopup.center.x = viewController.view.center.x
        loadingPopup.center.y = viewController.view.center.y
        
        //------------------------- Visual Effect -------------------------------
        
        visualEffectView = UIVisualEffectView()
        visualEffectView.backgroundColor = .black
        visualEffectView.alpha = 0.75
        visualEffectView.frame = UIScreen.main.bounds
        visualEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        visualEffectView.isUserInteractionEnabled = true
        
    }
    
    func startLoading() {
        
        if loadingPopup == nil {
            
            self.componentInit()
            
        }
        
        loadingPopup.startAnimate()
        
        self.animatingOpenView(addView: loadingPopup)
        
    }
    
    func stopLoading() {
        
        loadingPopup.stopAnimate()
        
        self.animatingCloseView(removeView: loadingPopup)
        
    }
    
    /* *********************************************************************************
     **
     **  MARK: Animating Open View
     **
     ***********************************************************************************/
    
    func animatingOpenView(addView : UIView) {
        
        viewController.view.addSubview(visualEffectView)
        
        viewController.view.addSubview(addView)
        
        self.viewAdded = addView
        
        addView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
        addView.alpha = 0
        
        UIView.animate(withDuration: 0.4) {
            addView.alpha = 1
            addView.transform = CGAffineTransform.identity
        }
        
    }
    
    /* *********************************************************************************
     **
     **  MARK: Animating Close View
     **
     ***********************************************************************************/
    
    func animatingCloseView(removeView : UIView) {
        
        let effect = self.visualEffectView.effect
        
        UIView.animate(withDuration: 0.3, animations: {
            removeView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
            removeView.alpha = 0
            
            self.visualEffectView.effect = nil
            self.visualEffectView.removeFromSuperview()
            self.visualEffectView.effect = effect
            
        }) { (success:Bool) in
            
            removeView.removeFromSuperview()
            
            self.viewAdded = nil
                        
        }
        
    }
    
    
}

func associatedObject<ValueType: AnyObject>(
    _ base: AnyObject,
    key: UnsafePointer<UInt8>,
    initialiser: () -> ValueType)
    -> ValueType {
        if let associated = objc_getAssociatedObject(base, key)
            as? ValueType { return associated }
        let associated = initialiser()
        objc_setAssociatedObject(base, key, associated,
                                 .OBJC_ASSOCIATION_RETAIN)
        return associated
}

func associateObject<ValueType: AnyObject>(
    _ base: AnyObject,
    key: UnsafePointer<UInt8>,
    value: ValueType) {
    objc_setAssociatedObject(base, key, value,
                             .OBJC_ASSOCIATION_RETAIN)
}

