//
//  LDAdPicView.h
//  LDScrollView
//
//  Created by 李洞洞 on 3/5/18.
//  Copyright © 2018年 Minte. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LDAdPicProtocol.h"
typedef void (^LoadImageBlock)(UIImageView * imageView,NSURL * url);
@protocol LDAdPicViewDelegate<NSObject>
/**传进来的模型 并不是具体的模型 而是遵守某个特定协议的任意模型 扩大通用性*/
- (void)adPicViewDidSelectedPicModel:(id<LDAdPicProtocol>)picM;
@end
@interface LDAdPicView : UIView
+ (instancetype)picViewWithLoadImageBlock:(LoadImageBlock)loadBlock;
/**
 *  用于加载图片的代码块, 必须赋值
 */
@property(nonatomic,copy)LoadImageBlock loadBlock;
/**
 *  用于告知外界, 当前滚动到的是哪个广告数据模型
 */
@property (nonatomic, strong) id<LDAdPicViewDelegate> delegate;
/**
 *  用来展示图片的数据源
 */
@property (nonatomic, strong) NSArray <id <LDAdPicProtocol>>*picModels;

@end
