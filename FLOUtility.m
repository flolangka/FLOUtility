//
//  FLOUtility.m
//  FLOUtility
//
//  Created by 360doc on 16/6/7.
//  Copyright © 2016年 Flolangka. All rights reserved.
//

#import "FLOUtility.h"
#import <UIKit/UIKit.h>

@implementation FLOUtility

+ (void)setup {
    DEVICE_IPAD = [[[UIDevice currentDevice] model] isEqualToString:@"iPad"];
    DEVICE_IPHONE = [[[UIDevice currentDevice] model] isEqualToString:@"iPhone"];
    DEVICE_IPODTOUCH = [[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"];
    DEVICE_IOS_VERSION = [[UIDevice currentDevice].systemVersion floatValue];
    
    DEVICE_SCREEN_WIDTH = CGRectGetWidth([UIScreen mainScreen].bounds);
    DEVICE_SCREEN_HEIGHT = CGRectGetHeight([UIScreen mainScreen].bounds);
    DEVICE_SCREEN_SCALE = [UIScreen mainScreen].scale;
}

@end
