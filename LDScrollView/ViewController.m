//
//  ViewController.m
//  LDScrollView
//
//  Created by 李洞洞 on 3/5/18.
//  Copyright © 2018年 Minte. All rights reserved.
//

#import "ViewController.h"
#import "LDAdPicView.h"
#import "UIImageView+WebCache.h"
#import "TestModel.h"
@interface ViewController ()
@property(nonatomic,strong)LDAdPicView * adPicView;
@property(nonatomic,strong)NSMutableArray * modelArrs;
@end

@implementation ViewController
- (NSMutableArray *)modelArrs
{
    if(!_modelArrs){
        _modelArrs = [NSMutableArray array];
        for (int i = 0; i < 4; i++) {
            
            if(i ==0){
               TestModel * model = [[TestModel alloc]init];
                model.adImgURL = [NSURL URLWithString:@"http://fdfs.xmcdn.com/group23/M04/92/22/wKgJNFimejfByOeXAADEj9xi3Ic318.jpg"];
                model.clickBlock = ^{
                    NSLog(@"0");
                };
                [_modelArrs addObject:model];
            }
            if(i ==1){
                TestModel * model = [[TestModel alloc]init];
                model.adImgURL = [NSURL URLWithString:@"http://fdfs.xmcdn.com/group27/M08/26/1C/wKgJR1jLVjODCfl2AAGcRAN-aYg653.jpg"];
                model.clickBlock = ^{
                    NSLog(@"1");
                };
                 [_modelArrs addObject:model];
            }
            if(i ==2){
               TestModel * model = [[TestModel alloc]init];
                model.adImgURL = [NSURL URLWithString:@"http://fdfs.xmcdn.com/group27/M06/6C/83/wKgJW1kAQlahJ3UgAAE3bPtCzp8506.jpg"];
                model.clickBlock = ^{
                    NSLog(@"2");
                };
                 [_modelArrs addObject:model];
            }
            if(i ==3){
                TestModel * model = [[TestModel alloc]init];
                model.adImgURL = [NSURL URLWithString:@"http://fdfs.xmcdn.com/group19/M04/AD/7E/wKgJJle6V2ahiSTZAAEU72DrYKE225.jpg"];
                model.clickBlock = ^{
                    NSLog(@"3");
                };
                 [_modelArrs addObject:model];
            }
        }
        
        
        
        
        
    }
    return _modelArrs;
}
-(LDAdPicView *)adPicView {
    if (!_adPicView) {
        LDAdPicView *adPicView = [LDAdPicView picViewWithLoadImageBlock:^(UIImageView *imageView, NSURL *url) {
            [imageView sd_setImageWithURL:url];
        }];
        _adPicView = adPicView;
    }
    return _adPicView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.adPicView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 150);
    [self.view addSubview:self.adPicView];
    self.adPicView.picModels = self.modelArrs;
    
}


@end
