//
//  ViewController.m
//  UIImage+KYCategory_DEMO
//
//  Created by kingly on 2016/11/11.
//  Copyright © 2016年 UIImage+KYCategory   Software (https://github.com/kingly09/UIImage-KYCategory) by kingly inc.

//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+KYCategory.h"

@interface ViewController (){

    UIImageView *qiaoImageView;
    UIImageView *qiaoColorImageView;

    UIImageView *likeImageView;
    UIImageView *likeImageView02;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //Original
    qiaoImageView = [[UIImageView alloc] init];
    CGRect imageRect = CGRectMake(80, 50, 100, 150);
    qiaoImageView.frame = imageRect;
    qiaoImageView.image = [UIImage imageNamed:@"qiao"];
    [self.view addSubview:qiaoImageView];

    //Colored pictures
    qiaoColorImageView = [[UIImageView alloc] init];
    CGRect imageColorRect = CGRectMake(80, 250, 100, 150);
    qiaoColorImageView.frame = imageColorRect;
    qiaoColorImageView.image = [[UIImage imageNamed:@"qiao"] tintedImageWithColor:[UIColor redColor] level:0.5];
    [self.view addSubview:qiaoColorImageView];


    likeImageView = [[UIImageView alloc] init];
    CGRect likeRect = CGRectMake(200, 50, 54, 50);
    likeImageView.frame = likeRect;
    likeImageView.image = [[UIImage imageNamed:@"img_like"] tintedImageWithColor:[UIColor redColor] level:0.5];
    [self.view addSubview:likeImageView];


    likeImageView02 = [[UIImageView alloc] init];
    CGRect like02Rect = CGRectMake(200, 150, 54, 50);
    likeImageView02.frame = like02Rect;
    likeImageView02.image = [[UIImage imageNamed:@"img_like"] tintedImageWithColor:[UIColor blackColor] level:0.5];
    [self.view addSubview:likeImageView02];


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
