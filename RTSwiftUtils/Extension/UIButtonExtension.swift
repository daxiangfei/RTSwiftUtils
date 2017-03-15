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
    
    public func decorateStyleOfBT(title:String,textColor:UIColor,textFont:CGFloat,backGroundColor:UIColor = UIColor.white,rightImage: UIImage) {
        let img = UIImage(named: "doTask_Package")
        self.imageView?.contentMode = .center
        self.setImage(img, for: .normal)
        var titleSize = CGRect();
        let size2 = CGSize();
        titleSize = title.boundingRect(with: size2, options: NSStringDrawingOptions.usesFontLeading, attributes: nil, context: nil)
        self.titleEdgeInsets = UIEdgeInsets(top: 0, left: -(img!.size.width * 2), bottom: 0, right: 0)
        self.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: -((titleSize.width * 2) + 55))
        self.titleLabel?.contentMode = .center
        self.decorateStyleOfBT(title: title, textColor: textColor, textFont: textFont, backGroundColor: backGroundColor)
    }
    
    public func decorateStyleOfBT(imageName:String) {
        self.setImage(UIImage(named: imageName), for: UIControlState())
    }
    
    public func decorateStyleOfBT(title:String,textColor:UIColor,textFont:CGFloat,imageName:String) {
        self.setImage(UIImage(named: imageName), for: .normal)
        self.setTitle(title, for: UIControlState())
        self.setTitleColor(textColor, for: UIControlState())
        self.titleLabel?.font = UIFont.systemFont(ofSize: textFont)
    }
    
    public func decorateStyleOfBT(title:String,textColor:UIColor,textFont:CGFloat,backGroundImageName:String) {
        self.setBackgroundImage(UIImage(named:backGroundImageName) , for: UIControlState())
        self.setTitle(title, for: UIControlState())
        self.setTitleColor(textColor, for: UIControlState())
        self.titleLabel?.font = UIFont.systemFont(ofSize: textFont)
    }
    
}
