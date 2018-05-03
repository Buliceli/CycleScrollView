//
//  LDAdPicProtocol.h
//  LDScrollView
//
//  Created by 李洞洞 on 3/5/18.
//  Copyright © 2018年 Minte. All rights reserved.
//
@protocol LDAdPicProtocol <NSObject>
/**
 *  广告图片URL
 */
@property (nonatomic, copy, readonly) NSURL *adImgURL;


/**
 *  点击执行的代码块(优先级高于adLinkURL)
 */
@property (nonatomic, copy) void(^clickBlock)(void);
@end
