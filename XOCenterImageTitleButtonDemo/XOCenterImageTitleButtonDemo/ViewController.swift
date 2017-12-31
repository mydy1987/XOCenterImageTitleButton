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
        btn.setImage(UIImage.init(named: "icon"), for: .normal)
        btn.setTitle("title", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        
        btn.imageViewTopSpaceToButton = 10
        btn.imageViewWidth = 50
        btn.imageViewHeight = 50
        
        btn.titleLabelWidth = 100
        btn.titleLabelHeight = 20
        btn.titleLabelTopSpaceToImageView = 10
        
        self.view.addSubview(btn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
}

