# XOCenterImageTitleButton

This is a button that makes imageView and titleLabel horizontally center.
![eg](https://github.com/mydy1987/XOCenterImageTitleButton/screen.png)

## Requirements
* iOS 8.0+
* Swift 4.0+

## Installation

#### CocoaPods
Add the following line to your `Podfile`:
```
pod 'XOCenterImageTitleButton'
```

#### Manual
Just drag XOCenterImageTitleButton.swift to your project.

## How to use
##### ・By coding
It is a subclass of UIButton,so the usage is the same with that of UIButton.
```swift
let btn = XOCenterImageTitleButton.init(frame: CGRect.init(x: 170, y: 200, width: 100, height: 100))
self.view.addSubview(btn)

btn.setImage(UIImage.init(named: "icon"), for: .normal)
btn.setTitle("title", for: .normal)
```

##### ・By using Storyboard or XIB
Add Button object and set Custom Class `XOCenterImageTitleButton`  
![via Storyboard](https://github.com/mydy1987/XOCenterImageTitleButton/class.png)



## Customize

##### ・By coding
```swift
btn.imageViewTopSpaceToButton = 10 // default is 0
btn.imageViewWidth = 50 // default is equal to the width of the button
btn.imageViewHeight = 50 // default is equal to  2/3 of the height of the button

btn.titleLabelTopSpaceToImageView = 10 // default is 0
btn.titleLabelWidth = 100 // default is equal to the width of the button
btn.titleLabelHeight = 20 // default is equal to  1/3 of the height of the button

btn.backgroundColorForHighlightedState = .blue
btn.imageViewAlphaForHighlightedState = 0.5
```

##### ・By using Storyboard or XIB
![via Storyboard](https://github.com/mydy1987/XOCenterImageTitleButton/xib.png)



# XOCenterImageTitleButton

平常会遇到很多次要把按钮图片放上面，文字放下面，然后文字和图片水平居中的情况，于是写了这个类.
![eg](https://github.com/mydy1987/XOCenterImageTitleButton/screen.png)

## 要求
* iOS 8.0+
* Swift 4.0+

## 安装

#### CocoaPods
在 `Podfile`中加入:
```
pod 'XOCenterImageTitleButton'
```

#### 手动
把XOCenterImageTitleButton.swift拖入工程.

## 使用方法
##### ・用代码
It is a subclass of UIButton,so the usage is the same with that of UIButton.
这个类完全继承自UIButton,用法与UIButton完成一样，你可以用btn.imageView,btn.titleLabel进行各种属性的设置。
```swift
let btn = XOCenterImageTitleButton.init(frame: CGRect.init(x: 170, y: 200, width: 100, height: 100))
self.view.addSubview(btn)

btn.setImage(UIImage.init(named: "icon"), for: .normal)
btn.setTitle("title", for: .normal)
```

##### ・用 Storyboard 或者 XIB
在StoryBoard或者XIB中放入一个UIButton,把Class设置为 `XOCenterImageTitleButton`  
![via Storyboard](https://github.com/mydy1987/XOCenterImageTitleButton/class.png)



## 自定义（主要是设置图片与文字的位置，大小）

##### ・用代码
```swift
btn.imageViewTopSpaceToButton = 10 // default is 0
btn.imageViewWidth = 50 // default is equal to the width of the button
btn.imageViewHeight = 50 // default is equal to  2/3 of the height of the button

btn.titleLabelTopSpaceToImageView = 10 // default is 0
btn.titleLabelWidth = 100 // default is equal to the width of the button
btn.titleLabelHeight = 20 // default is equal to  1/3 of the height of the button

btn.backgroundColorForHighlightedState = .blue
btn.imageViewAlphaForHighlightedState = 0.5
```

##### ・用 Storyboard 或者 XIB
在面板里，可以设置这6个属性
![via Storyboard](https://github.com/mydy1987/XOCenterImageTitleButton/xib.png)

