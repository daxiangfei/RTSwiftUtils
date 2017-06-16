//
//  UIButtonExtension.swift
//  RongTeng
//
//  Created by rongteng on 16/3/29.
//  Copyright © 2016年 Mike. All rights reserved.
//

import UIKit



extension UIButton {
  
  ///圆角
  public func cornerRadiusOfBT(_ cornerRadiu: CGFloat) {
    self.layer.cornerRadius = cornerRadiu
    self.layer.masksToBounds = true
  }
  
  ///title  textColor textFont backGroundColor
  public func decorateStyleOfBT(title:String,textColor:UIColor,textFont:CGFloat,backGroundColor:UIColor = UIColor.white) {
    self.backgroundColor = backGroundColor
    self.setTitle(title, for: .normal)
    self.setTitleColor(textColor, for: .normal)
    self.titleLabel?.font = UIFont.systemFont(ofSize: textFont)
  }
  
  public func decorateStyleOfBT(title:String,textColor:UIColor,textFont:CGFloat,backGroundColor:UIColor = UIColor.white,rightImage: String) {
    let img = UIImage(named: rightImage)
    guard  let realImg = img else {
      decorateStyleOfBT(title: title, textColor: textColor, textFont: textFont, backGroundColor: backGroundColor)
      return
    }
    self.imageView?.contentMode = .center
    self.setImage(realImg, for: .normal)
    self.titleLabel?.contentMode = .center
    let titleSize = title.achieveStringRect(UIScreen.main.bounds.width, font: textFont)
    titleEdgeInsets = UIEdgeInsets(top: 0, left: -(realImg.size.width * 2), bottom: 0, right: 0)
    imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: -((titleSize.width * 2) + 55))
    decorateStyleOfBT(title: title, textColor: textColor, textFont: textFont, backGroundColor: backGroundColor)
  }
  
  
  public func decorateStyleOfBT(imageName:String) {
    self.setImage(UIImage(named: imageName), for: .normal)
  }
  
  
  public func decorateStyleOfBT(title:String,textColor:UIColor,textFont:CGFloat,imageName:String) {
    self.setImage(UIImage(named: imageName), for: .normal)
    self.setTitle(title, for: .normal)
    self.setTitleColor(textColor, for: .normal)
    self.titleLabel?.font = UIFont.systemFont(ofSize: textFont)
  }
  
  public func decorateStyleOfBT(title:String,textColor:UIColor,textFont:CGFloat,backGroundImageName:String) {
    self.setBackgroundImage(UIImage(named:backGroundImageName) , for: UIControlState())
    self.setTitle(title, for: .normal)
    self.setTitleColor(textColor, for: .normal)
    self.titleLabel?.font = UIFont.systemFont(ofSize: textFont)
  }
  
}
