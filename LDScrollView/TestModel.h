//
//  TestModel.h
//  LDScrollView
//
//  Created by 李洞洞 on 3/5/18.
//  Copyright © 2018年 Minte. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LDAdPicProtocol.h"
@interface TestModel : NSObject<LDAdPicProtocol>



/**
 *  广告图片URL
 */
@property (nonatomic, copy) NSURL *adImgURL;

/**
 *  点击广告, 需要跳转的URL
 */
@property (nonatomic, copy) NSURL *adLinkURL;

/**
 *  点击执行的代码块(优先级高于adLinkURL)
 */
@property (nonatomic, copy) void(^clickBlock)(void);
@end
