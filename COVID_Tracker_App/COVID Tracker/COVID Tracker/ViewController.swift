//
//  ViewController.swift
//  COVID Tracker
//
//  Created by Yitong Pei on 29/6/2022.
//

import UIKit

// Data of Covid cases
class ViewController: UIViewController {

    /*
     - Call APIs
     -ViewModel
     -View: Table
     -Filter / Users can pick the State
     - Update UI
     */
    
    private var scope: APICaller.DataScope = .national
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Covid Cases"
        
        creatFilterButton()
    }
    
    private func creatFilterButton(){
        
        let buttonTitle: String = {
            switch scope{
            case .national: return "National"
            case .state(let state): return state.name
            }
        }()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: buttonTitle,
            style:.done,
            target: self,
            action: #selector(didTapFilter)
        
        )
    }
    
    @objc private func didTapFilter(){
        let vc = FilterViewController()
        let navVC = UINavigationController(rootViewController: vc)
        present(navVC, animated: true)
    }


}

