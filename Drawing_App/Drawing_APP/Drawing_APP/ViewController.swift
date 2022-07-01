//
//  ViewController.swift
//  Drawing_APP
//
//  Created by Yitong Pei on 1/7/2022.
//

import UIKit
import PencilKit

class ViewController: UIViewController, PKCanvasViewDelegate, PKToolPickerObserver{

    // PKToolPickerObserver responsible for the tool picker whch can move around on our screen
    
    
    @IBOutlet weak var pencilFingerButton: UIBarButtonItem!
    
    @IBOutlet weak var canvasView: PKCanvasView! // from pencilKit
    
    let canvasWidth: CGFloat = 768
    let canvasOverscrollHight: CGFloat = 500
    let toolPicker = PKToolPicker.init()
    var drawing = PKDrawing()
    
    @IBAction func saveDrawingToCameraRoll(_sender: Any){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        canvasView.delegate = self
        canvasView.drawing = drawing
        
        canvasView.alwaysBounceVertical = true
        canvasView.allowsFingerDrawing = true // for iphone
        
        
        toolPicker.addObserver(canvasView)
        toolPicker.setVisible(true, forFirstResponder: canvasView)
        canvasView.becomeFirstResponder()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let canvasScale = canvasView.bounds.width / canvasWidth
        canvasView.minimumZoomScale = canvasScale
        canvasView.maximumZoomScale = canvasScale
        canvasView.zoomScale = canvasScale
        
        canvasView.contentOffset = CGPoint(x: 0, y: -canvasView.adjustedContentInset.top)
    }
    override var prefersHomeIndicatorAutoHidden: Bool{
        return true
    }

    func updateContentSizeForDrawing(){
        let drawing = canvasView.drawing
        let contentHeight: CGFloat
        
        if !drawing.bounds.isNull{
            contentHeight = max(canvasView.bounds.height, (drawing.bounds.maxY + self.canvasOverscrollHight) * canvasView.zoomScale)
        }else{
            contentHeight = canvasView.bounds.height
        }
        
        canvasView.contentSize = CGSize(width: canvasWidth * canvasView.zoomScale, height: contentHeight)
    }

}

