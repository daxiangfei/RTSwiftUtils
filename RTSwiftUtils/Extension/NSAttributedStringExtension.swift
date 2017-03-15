//
//  NSAttributedStringExtension.swift
//  RongTeng
//
//  Created by rongteng on 16/5/17.
//  Copyright © 2016年 Mike. All rights reserved.
//

import Foundation
import UIKit

extension NSAttributedString {
    
    ///二部分 色值和字体都不同
    public class func attributedOfTwoPart(onePartTitle:String,onePartForegroundColor:UIColor,onePartFontSize:CGFloat,twoPartTitle:String,twoPartForegroundColor:UIColor,twoPartFontSize:CGFloat) -> NSAttributedString {
        
        let resultAtt = NSMutableAttributedString()
        let oneAttDic = [NSForegroundColorAttributeName:onePartForegroundColor,NSFontAttributeName:UIFont.systemFont(ofSize: onePartFontSize)]
        let oneAtt = NSAttributedString(string: onePartTitle, attributes: oneAttDic)
        resultAtt.append(oneAtt)
        
        let twoAttDic = [NSForegroundColorAttributeName:twoPartForegroundColor,NSFontAttributeName:UIFont.systemFont(ofSize: twoPartFontSize)]
        let twoAtt = NSAttributedString(string: twoPartTitle, attributes: twoAttDic)
        
        resultAtt.append(twoAtt)
        
        return resultAtt
    }
    
    ///二部分  色值相同 字体不同
    public class func attributedOfTwoPartWithSameColor(foregroundColor:UIColor,onePartTitle:String,onePartFontSize:CGFloat,twoPartTitle:String,twoPartFontSize:CGFloat) -> NSAttributedString {
        
        let resultAtt = NSMutableAttributedString()
        let oneAttDic = [NSForegroundColorAttributeName:foregroundColor,NSFontAttributeName:UIFont.systemFont(ofSize: onePartFontSize)]
        let oneAtt = NSAttributedString(string: onePartTitle, attributes: oneAttDic)
        resultAtt.append(oneAtt)
        
        let twoAttDic = [NSForegroundColorAttributeName:foregroundColor,NSFontAttributeName:UIFont.systemFont(ofSize: twoPartFontSize)]
        let twoAtt = NSAttributedString(string: twoPartTitle, attributes: twoAttDic)
        
        resultAtt.append(twoAtt)
        return resultAtt
    }
    
    ///创建一个 有下划线的文字
    public class func attributedOfUnderLine(title:String,titleColor:UIColor) -> NSAttributedString {
        
        let resultAtt = NSMutableAttributedString()
        let oneAttDic = [NSUnderlineStyleAttributeName:NSUnderlineStyle.styleSingle.rawValue,NSUnderlineColorAttributeName:titleColor,NSForegroundColorAttributeName:titleColor] as [String : Any]
        let oneAtt = NSAttributedString(string: title, attributes: oneAttDic)
        resultAtt.append(oneAtt)
        return resultAtt
    }
    
    
    ///下划线和正常类型
    public class func attributedForUnderLineAndNormal(oneTitle:String,oneTitleColor:UIColor,twoTitle:String,twoTitleColor:UIColor) -> NSAttributedString {
        
        let resultAtt = NSMutableAttributedString()
        let oneAttDic = [NSUnderlineStyleAttributeName:NSUnderlineStyle.styleSingle.rawValue,NSUnderlineColorAttributeName:oneTitleColor,NSForegroundColorAttributeName:oneTitleColor] as [String : Any]
        let oneAtt = NSAttributedString(string: oneTitle, attributes: oneAttDic)
        resultAtt.append(oneAtt)
        
        let twoAttDic = [NSForegroundColorAttributeName:twoTitleColor]
        let twoAtt = NSAttributedString(string: twoTitle, attributes: twoAttDic)
        resultAtt.append(twoAtt)
        
        return resultAtt
    }
    
}




















