//
//  ViewController.swift
//  XOCenterImageTitleButtonDemo
//
//  Created by even on 2017/12/31.
//  Copyright © 2017年 even. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let btn = XOCenterImageTitleButton.init(frame: CGRect.init(x: 170, y: 200, width: 100, height: 100))
        self.view.addSubview(btn)
        
        btn.setImage(UIImage.init(named: "icon"), for: .normal)
        btn.setTitle("title", for: .normal)
        
        btn.setTitleColor(.black, for: .normal)
        
        btn.imageViewTopSpaceToButton = 10 // default is 0
        btn.imageViewWidth = 50 // default is equal to the width of the button
        btn.imageViewHeight = 50 // default is equal to  2/3 of the height of the button
        
        btn.titleLabelTopSpaceToImageView = 10 // default is 0
        btn.titleLabelWidth = 100 // default is equal to the width of the button
        btn.titleLabelHeight = 20 // default is equal to  1/3 of the height of the button
        
        btn.backgroundColorForHighlightedState = .blue
        btn.imageViewAlphaForHighlightedState = 0.5
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}

