
# XOCenterImageTitleButton

平常会遇到很多次要把按钮图片放上面，文字放下面，然后文字和图片水平居中的情况，于是写了这个类.
![eg](https://github.com/mydy1987/XOCenterImageTitleButton/blob/master/screen.png)

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
这个类完全继承自UIButton,用法与UIButton完成一样，你可以用btn.imageView以及btn.titleLabel进行各种属性的设置。
```swift
let btn = XOCenterImageTitleButton.init(frame: CGRect.init(x: 170, y: 200, width: 100, height: 100))
self.view.addSubview(btn)

btn.setImage(UIImage.init(named: "icon"), for: .normal)
btn.setTitle("title", for: .normal)
```

##### ・用 Storyboard 或者 XIB
在StoryBoard或者XIB中放入一个UIButton,把Class设置为 `XOCenterImageTitleButton`


## 自定义（主要是设置图片与文字的位置，大小）

如果按钮的title文字不是很长，不用弄成多行，图片大小也是标准的，是不用写下面的代码的，因为图片默认是按钮的2/3高度，文字是按钮的1/3高度，宽度都与按钮同宽，按钮设置好title，image就已经是居中的按钮了。顶多设置一下titleLabel与imageView的间距，这个值是可以为负值的。

##### ・用代码
```swift
btn.imageViewTopSpaceToButton = 10 // 默认是0
btn.imageViewWidth = 50 // 默认与按钮同宽
btn.imageViewHeight = 50 // 默认是按钮高度的2/3

btn.titleLabelTopSpaceToImageView = 10 // 默认是0
btn.titleLabelWidth = 100 // 默认与按钮同宽
btn.titleLabelHeight = 20 // 默认是按钮高度的1/3

btn.backgroundColorForHighlightedState = .blue // 设置按钮按下时按钮的背景色
btn.imageViewAlphaForHighlightedState = 0.5 // 设置按钮按下时图片的透明度
```

##### ・用 Storyboard 或者 XIB
在面板里，可以设置这6个属性，实现对imageView titleLabel的位置和大小的控制，但无论怎么设置，imageView和titleLabel都是水平居中的
![via Storyboard](https://github.com/mydy1987/XOCenterImageTitleButton/blob/master/xib.png)


# XOCenterImageTitleButton

This is a button that makes imageView and titleLabel horizontally center.

![eg](https://github.com/mydy1987/XOCenterImageTitleButton/blob/master/screen.png)

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
![via Storyboard](https://github.com/mydy1987/XOCenterImageTitleButton/blob/master/xib.png)




