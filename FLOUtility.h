//
//  FLOUtility.h
//  FLOUtility
//
//  Created by 360doc on 16/6/7.
//  Copyright © 2016年 Flolangka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FLOUtilityImage.h"
#import "FLOUtilityView.h"
#import "FLOUtilityString.h"
#import "FLOUtilityDate.h"

extern BOOL DEVICE_IPAD;
extern BOOL DEVICE_IPHONE;
extern BOOL DEVICE_IPODTOUCH;
extern float DEVICE_IOS_VERSION;

extern float DEVICE_SCREEN_WIDTH;
extern float DEVICE_SCREEN_HEIGHT;
extern float DEVICE_SCREEN_SCALE;   //2倍屏、3倍屏；乘以宽高即为分辨率

//UIColor
#define COLOR_RGB(A,B,C) [UIColor colorWithRed:(A)/255.0 green:(B)/255.0 blue:(C)/255.0 alpha:1.0]
#define COLOR_RGB3SAME(A) [UIColor colorWithRed:(A)/255.0 green:(A)/255.0 blue:(A)/255.0 alpha:1.0]

#define COLOR_RGBAlpha(A,B,C,AL) [UIColor colorWithRed:(A)/255.0 green:(B)/255.0 blue:(C)/255.0 alpha:AL]
#define COLOR_RGBA3SAMEAlpha(A,AL) [UIColor colorWithRed:(A)/255.0 green:(A)/255.0 blue:(A)/255.0 alpha:AL]

#define COLOR_HEX(hexColor,falpha) [UIColor colorWithRed:(((CGFloat)((hexColor & 0xFF0000) >> 16)) / 255.0) green:(((CGFloat)((hexColor & 0xFF00) >> 8)) / 255.0) blue:(((CGFloat)(hexColor & 0xFF)) / 255.0) alpha:1.0]
#define COLOR_HEXAlpha(hexColor,falpha) [UIColor colorWithRed:(((CGFloat)((hexColor & 0xFF0000) >> 16)) / 255.0) green:(((CGFloat)((hexColor & 0xFF00) >> 8)) / 255.0) blue:(((CGFloat)(hexColor & 0xFF)) / 255.0) alpha:(falpha)]

@interface FLOUtility : NSObject

@end
