//
//  ViewController.swift
//  ScrollViewTest
//
//  Created by Yitong Pei on 29/6/2022.
//


// This project is to add a scroll view into an App
// ScrollView is a user interface element in which you can put other elements, and you can specify a scroll inside, ethier horizontal or vertical direction
// For example, like TableView, those scrolls objects are inheritaed from this ScrollView
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let scrollView = UIScrollView(frame: CGRect(x: 10, y: 10, width: view.frame.size.width - 20, height: view.frame.size.height - 20))
        scrollView.backgroundColor = .green
        view.addSubview(scrollView)
        
        let topButton = UIButton(frame: CGRect(x: 20, y: 20, width: 100, height: 100))
        topButton.backgroundColor = .blue
        scrollView.addSubview(topButton)
        
        let bottomButton = UIButton(frame: CGRect(x: 20, y: 2000, width: 100, height: 100))
        bottomButton.backgroundColor = .blue
        scrollView.addSubview(bottomButton)
        
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: 2200)
        
        // Pageing
        // when scroll doen to the end of the current page, scroll a lil bit more for "load for more content"
//        scrollView.contentOffset.y
    }

}

