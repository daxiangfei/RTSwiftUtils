//
//  UILabelExtension.swift
//  RongTeng
//
//  Created by rongteng on 16/3/29.
//  Copyright © 2016年 Mike. All rights reserved.
//

import UIKit


extension UILabel  {
    
    /// title  textColor textFont
    public func decorateStyleOfLB(title:String,textColor:UIColor,textFont:CGFloat) {
        self.text = title
        self.font = UIFont.systemFont(ofSize: textFont)
        self.textColor = textColor
    }
    
    /// title  textColor textFont textAlignment
    public func decorateStyleOfLB(title:String,textColor:UIColor,textFont:CGFloat,textAlignment:NSTextAlignment) {
        self.text = title
        self.font = UIFont.systemFont(ofSize: textFont)
        self.textColor = textColor
        self.textAlignment = textAlignment
    }

    /// title  textColor textFont textAlignment backGroundColor
    public func decorateStyleOfLB(title:String,textColor:UIColor,textFont:CGFloat,textAlignment:NSTextAlignment,backGroundColor:UIColor) {
        self.backgroundColor = backGroundColor
        self.text = title
        self.font = UIFont.systemFont(ofSize: textFont)
        self.textColor = textColor
        self.textAlignment = textAlignment
    }
    
}




