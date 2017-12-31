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
    
    // MARK: - Variables
    
    // imageView到顶部的距离（默认为0）
    @IBInspectable open var imageViewTopSpaceToButton : CGFloat = 0
    
    // imageView的宽度（默认与按钮同宽）
    private var _imageViewWidth : CGFloat?
    @IBInspectable open var imageViewWidth : CGFloat {
        get {
            if let width = _imageViewWidth {
                return width
            } else {
                return self.frame.size.width
            }
        }
        set {
            _imageViewWidth = newValue
        }
    }
    
    // imageView的宽度（默认是按钮的2/3高）
    private var _imageViewHeight : CGFloat?
    @IBInspectable open var imageViewHeight : CGFloat {
        get {
            if let height = _imageViewHeight {
                return height
            } else {
                return self.frame.size.height * 2 / 3
            }
        }
        set {
            _imageViewHeight = newValue
        }
    }
    
    // titleLabel到imageView的距离（默认为0）
    @IBInspectable open var titleLabelTopSpaceToImageView : CGFloat = 0
    // titleLabel的宽度（默认与按钮同宽）
    private var _titleLabelWidth : CGFloat?
    @IBInspectable open var titleLabelWidth : CGFloat {
        get {
            if let width = _titleLabelWidth {
                return width
            } else {
                return self.frame.size.width
            }
        }
        set {
            _titleLabelWidth = newValue
        }
    }
    // titleLabel的高度（默认是按钮的1/3高）
    private var _titleLabelHeight : CGFloat?
    @IBInspectable open var titleLabelHeight : CGFloat  {
        get {
            if let height = _titleLabelHeight {
                return height
            } else {
                return self.frame.size.height * 1 / 3
            }
        }
        set {
            _titleLabelHeight = newValue
        }
    }
    
    // 按钮未按下时的背景色（默认为白色）
    open var backgroundColorForNormalState = UIColor.white
    // 按钮高亮时的背景色（默认为灰色）
    open var backgroundColorForHighlightedState = UIColor.init(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
    
    // 按钮高亮时图片的透明度
    open var imageViewAlphaForHighlightedState : CGFloat = 0.8
    
    // MARK: - LiftCycle
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
        viewY = (self.imageView?.frame.maxY)! + titleLabelTopSpaceToImageView
        viewWidth = self.titleLabelWidth
        viewX = (self.frame.size.width - viewWidth) * 0.5
        self.titleLabel?.frame = CGRect.init(x: viewX, y: viewY, width: viewWidth, height: viewHeight)
    }
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        self.layoutSubviews()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.setup()
    }
    
    // MARK: - Private
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


