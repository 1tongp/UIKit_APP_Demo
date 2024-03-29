//
//  ViewController.swift
//  Side_Menu
//
//  Created by Yitong Pei on 6/7/2022.
//

import UIKit

class ContainerViewController: UIViewController {

    enum MenuState{
        case opened
        case closed
    }
    
    private var menuState: MenuState = .closed
    
    let menuVC = MenuViewController()
    let homeVC = HomeViewController()
    var navVC: UINavigationController?
    lazy var infoVC = infoViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        addChildVCs()
    }
    
    private func addChildVCs(){
        // Menu
        menuVC.delegate = self
        addChild(menuVC)
        view.addSubview(menuVC.view)
        menuVC.didMove(toParent: self)
        
        // Home
        homeVC.delegate = self
        let navVC = UINavigationController(rootViewController: homeVC)
        addChild(navVC)
        view.addSubview(navVC.view)
        navVC.didMove(toParent: self)
        self.navVC = navVC
        
    }

}

extension ContainerViewController: HomeViewControllerDelegate{
    func didTapMenuButton() {
        toggleMenu(completion: nil)
    }
    
    func toggleMenu(completion: (() -> Void)?){
        
        // the completion handler is optional in this function
        
        switch menuState{
        case .closed:
            //open it
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut) {
                self.navVC?.view.frame.origin.x = self.homeVC.view.frame.size.width - 100
                
            } completion: { [weak self] done in
                if done {
                    self?.menuState = .opened
                    
                }
            }
            
        case .opened:
            // close it
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut) {
                self.navVC?.view.frame.origin.x = 0
                
            } completion: { [weak self] done in
                if done {
                    self?.menuState = .closed
                    DispatchQueue.main.async{
                        completion?()
                    }
                }
            }
        }
    }
}

extension ContainerViewController: MenuViewControllerDelegate{
    func didSelect(menuItem: MenuViewController.MenuOPtions){
        // print("did select")
        toggleMenu{ [weak self] in 
            switch menuItem{
            case .home:
                self?.resetToHome()
            case .info:
//                let vc = infoViewController()
//                self?.present(UINavigationController(rootViewController: vc), animated: true, completion: nil)
                
                // add info child
                self?.addInfo()
                
            case.appRating:
                break
            case.shareApp:
                break
            case .settings:
                break
            }
        }
    }
    func addInfo(){
        let vc = infoVC
        homeVC.addChild(vc)
        
        homeVC.view.addSubview(vc.view)
        vc.view.frame = view.frame
        vc.didMove(toParent: homeVC)
        homeVC.title = vc.title
    }
    
    func resetToHome(){
        infoVC.view.removeFromSuperview()
        infoVC.didMove(toParent: nil)
        homeVC.title = "Home"
    }
}

