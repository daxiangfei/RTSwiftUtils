//
//  DateHelper.swift
//  XiaoZhuGeJinFu
//
//  Created by rongteng on 16/7/7.
//  Copyright © 2016年 rongteng. All rights reserved.
//

import Foundation

public enum DateFormatter:String {
    case YearMonthDayHourMinuteSec = "yyyy-MM-dd HH:mm:ss"
    case YearMonthDayHourMinuteSec_CompactLink = "yyyyMMddHHmmss"
    case YearMonthDayHourMinute = "yyyy-MM-dd HH:mm"
}

public class DateHepler {
    
    //按照给定的格式 转换当前时间
    public class func transformCurrentTime(_ formatter:DateFormatter) -> String {
        let dateFormatter = Foundation.DateFormatter()
        dateFormatter.dateFormat = formatter.rawValue
        let dateStr = dateFormatter.string(from: Date())
        return dateStr
    }
    //获取当前时间戳
    public class func achieveCurrentTimestamp() -> String{
        let now = NSDate()
        let timeInterval:TimeInterval = now.timeIntervalSince1970
        let timeStamp = Int(timeInterval)
        return "\(timeStamp)"
    }
    
    //按照给定时间转换成星期几
    public class func transformTimeForWeek(_ formatter:DateFormatter,transformtime:String) -> String {
        let dateFormatter = Foundation.DateFormatter()
        dateFormatter.dateFormat = formatter.rawValue//这里要根据transformtime时间格式来定
        let date = dateFormatter.date(from: transformtime)
        //timeIntervalSince1970是取当前日期和1970-01-01 0点的时间差，NSDate表示的时间在内存中都是UTC时间，即0时区的时间，当需要显示时，才会根据当前系统的时区或者代码里指定的时区进行显示。以“2016-01-18 00:01:01”为例，输入值自然伴随着当前的时区（中国时区为东8区），转换成NSDate对象后就变成了UTC时间，即 “2016-01-17 16:01:01”，小时数减了8，而 timeIntervalSince1970 计算出来的时间差自然也就是2016-01-17到1970-01-01的。 NSTimeZone.localTimeZone().secondsFromGMT 即可调整时区差
        let interval = Int(date!.timeIntervalSince1970) + NSTimeZone.local.secondsFromGMT()
        let days = Int(interval/(24*60*60))
        //1970-01-01 是星期四 减去三天为星期一
        let weekday = (days-3)%7//weekday为整形，从0到6分别表示 周日 到周六
        var weekDayStr:String!
        switch weekday {
        case 1:weekDayStr = "星期一"
        case 2:weekDayStr = "星期二"
        case 3:weekDayStr = "星期三"
        case 4:weekDayStr = "星期四"
        case 5:weekDayStr = "星期五"
        case 6:weekDayStr = "星期六"
        case 0:weekDayStr = "星期日"
        default: break
            
        }
        return weekDayStr
    }
}






























