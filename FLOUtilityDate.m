//
//  FLOUtilityDate.m
//  FLOUtility
//
//  Created by 360doc on 16/6/7.
//  Copyright © 2016年 Flolangka. All rights reserved.
//

#import "FLOUtilityDate.h"

@implementation FLOUtilityDate

+ (NSString *)timeAgoSinceNow:(NSDate *)date {
    NSTimeInterval time = -[date timeIntervalSinceNow];
    
    if (time < 60) {
        return @"刚刚";
    } else if (time < 3600) {
        return [NSString stringWithFormat:@"%d分钟前", (int)floor(time/60)];
    }else if (time < 3600 * 24) {
        return [NSString stringWithFormat:@"%d小时前", (int)floor(time/3600)];
    }else {
        NSCalendar *calendar = [NSCalendar currentCalendar];
        NSUInteger unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond | NSCalendarUnitWeekday;
        
        //昨天凌晨12点timeInteval
        NSDateComponents *yesterdayCom = [calendar components:unitFlags fromDate:[NSDate dateWithTimeIntervalSince1970:([[NSDate date] timeIntervalSince1970] - 60*60*24)]];
        [yesterdayCom setHour:0];
        [yesterdayCom setMinute:0];
        [yesterdayCom setSecond:0];
        NSTimeInterval yesterdayTimeInteval = [[calendar dateFromComponents:yesterdayCom] timeIntervalSince1970];
        
        NSTimeInterval timeInterval = [date timeIntervalSince1970] - yesterdayTimeInteval;
        if (timeInterval >= 0) {
            return @"昨天";
        } else {
            return [NSString stringWithFormat:@"%d天前", (int)(ceil(-timeInterval/(3600 * 24)) + 1)];
        }
    }
}

+ (NSString *)dayAgoSinceNow:(NSDate *)date {
    NSTimeInterval time = -[date timeIntervalSinceNow];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSUInteger unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond | NSCalendarUnitWeekday;
    
    //今天凌晨12点timeInteval
    NSDateComponents *todayCom = [calendar components:unitFlags fromDate:[NSDate date]];
    [todayCom setHour:0];
    [todayCom setMinute:0];
    [todayCom setSecond:0];
    NSTimeInterval todayTimeInteval = [[calendar dateFromComponents:todayCom] timeIntervalSince1970];
    
    if (time < 60) {
        return @"刚刚";
    } else if (time < 3600) {
        return [NSString stringWithFormat:@"%d分钟前", (int)floor(time/60)];
    }else if (time < 3600 * 24) {
        return [NSString stringWithFormat:@"%d小时前", (int)floor(time/3600)];
    }else {
        
        
        NSTimeInterval timeInterval = [date timeIntervalSince1970] - yesterdayTimeInteval;
        if (timeInterval >= 0) {
            return @"昨天";
        } else {
            return [NSString stringWithFormat:@"%d天前", (int)(ceil(-timeInterval/(3600 * 24)) + 1)];
        }
    }
}

@end
