//
//  XOCenterImageTitleButton.swift
//
//
//  Created by even on 2017/10/27.
//  Copyright (c) 2017  (https://github.com/mydy1987)
//

import UIKit
@IBDesignable
open class XOCenterImageTitleButton: UIButton {
    
    // imageView到顶部的距离（默认为10）
    @IBInspectable open var imageViewTopSpaceToButton : CGFloat = 10
    // imageView的大小（默认宽高40）
    @IBInspectable open var imageViewWidth : CGFloat = 40
    @IBInspectable open var imageViewHeight : CGFloat = 40
    
    // titleLabel到底部的距离（默认为10）
    @IBInspectable open var titleLabelBottomSpaceToButton : CGFloat = 10
    // titleLabel的大小（默认宽40 高20）
    @IBInspectable open var titleLabelWidth : CGFloat = 40
    @IBInspectable open var titleLabelHeight : CGFloat = 20
    
    // 按钮未按下时的背景色（默认为白色）
    open var backgroundColorForNormalState = UIColor.white
    // 按钮高亮时的背景色（默认为灰色）
    open var backgroundColorForHighlightedState = UIColor.init(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
    
    // 按钮高亮时图片的透明度
    open var imageViewAlphaForHighlightedState : CGFloat = 0.8
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        
        var viewX : CGFloat = 0.0
        var viewY : CGFloat = 0.0
        var viewWidth : CGFloat = 0.0
        var viewHeight : CGFloat = 0.0
        
        // 设置imageView
        viewY = imageViewTopSpaceToButton
        viewWidth = self.imageViewWidth
        viewX = (self.frame.size.width - viewWidth) * 0.5
        viewHeight = self.imageViewHeight
        self.imageView?.frame = CGRect.init(x: viewX, y: viewY, width: viewWidth, height: viewHeight)
        
        // 设置titleLabel
        viewHeight = self.titleLabelHeight
        viewY = self.frame.size.height - viewHeight - titleLabelBottomSpaceToButton
        viewWidth = self.titleLabelWidth
        viewX = (self.frame.size.width - viewWidth) * 0.5
        self.titleLabel?.frame = CGRect.init(x: viewX, y: viewY, width: viewWidth, height: viewHeight)
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.setup()
    }
    
    private func setup() {
        addAction()
        self.adjustsImageWhenHighlighted = false
        self.titleLabel?.textAlignment = .center
        self.imageView?.contentMode = .center
    }
    
    private func addAction() -> Void {
        self.addTarget(self, action:#selector(self.pressed(_:)), for: .touchDown)
        self.addTarget(self, action:#selector(self.touchUp(_:)), for: .touchUpInside)
        self.addTarget(self, action:#selector(self.touchUp(_:)), for: .touchUpOutside)
        self.addTarget(self, action:#selector(self.touchUp(_:)), for: .touchCancel)
    }
    
    @objc private func pressed(_ button:UIButton) -> Void {
        if (self.imageViewAlphaForHighlightedState > 0) {
            self.imageView?.alpha = self.imageViewAlphaForHighlightedState
        }
        button.backgroundColor = self.backgroundColorForHighlightedState
    }
    
    @objc private func touchUp(_ button:UIButton) -> Void {
        self.imageView?.alpha = 1.0
        button.backgroundColor = self.backgroundColorForNormalState
    }
    
}


