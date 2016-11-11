//
//  UIImage+KYCategory.m
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

#import "UIImage+KYCategory.h"

@implementation UIImage (KYCategory)

// Tint: Color
-(UIImage*)tintedImageWithColor:(UIColor*)color {
    return [self tintedImageWithColor:color level:1.0f];
}

// Tint: Color + level
-(UIImage*)tintedImageWithColor:(UIColor*)color level:(CGFloat)level {
    CGRect rect = CGRectMake(0.0f, 0.0f, self.size.width, self.size.height);
    return [self tintedImageWithColor:color rect:rect level:level];
}

// Tint: Color + Rect
-(UIImage*)tintedImageWithColor:(UIColor*)color rect:(CGRect)rect {
    return [self tintedImageWithColor:color rect:rect level:1.0f];
}

// Tint: Color + Rect + level
-(UIImage*)tintedImageWithColor:(UIColor*)color rect:(CGRect)rect level:(CGFloat)level {
    CGRect imageRect = CGRectMake(0.0f, 0.0f, self.size.width, self.size.height);

    UIGraphicsBeginImageContextWithOptions(imageRect.size, NO, self.scale);
    CGContextRef ctx = UIGraphicsGetCurrentContext();

    [self drawInRect:imageRect];

    CGContextSetFillColorWithColor(ctx, [color CGColor]);
    CGContextSetAlpha(ctx, level);
    CGContextSetBlendMode(ctx, kCGBlendModeSourceAtop);
    CGContextFillRect(ctx, rect);

    CGImageRef imageRef = CGBitmapContextCreateImage(ctx);
    UIImage *darkImage = [UIImage imageWithCGImage:imageRef
                                             scale:self.scale
                                       orientation:self.imageOrientation];
    CGImageRelease(imageRef);

    UIGraphicsEndImageContext();

    return darkImage;
}

// Tint: Color + Insets
-(UIImage*)tintedImageWithColor:(UIColor*)color insets:(UIEdgeInsets)insets {
    return [self tintedImageWithColor:color insets:insets level:1.0f];
}

// Tint: Color + Insets + level
-(UIImage*)tintedImageWithColor:(UIColor*)color insets:(UIEdgeInsets)insets level:(CGFloat)level {
    CGRect rect = CGRectMake(0.0f, 0.0f, self.size.width, self.size.height);
    return [self tintedImageWithColor:color rect:UIEdgeInsetsInsetRect(rect, insets) level:level];
}

// Light: Level
-(UIImage*)lightenWithLevel:(CGFloat)level {
    return [self tintedImageWithColor:[UIColor whiteColor] level:level];
}

// Light: Level + Insets
-(UIImage*)lightenWithLevel:(CGFloat)level insets:(UIEdgeInsets)insets {
    return [self tintedImageWithColor:[UIColor whiteColor] insets:insets level:level];
}

// Light: Level + Rect
-(UIImage*)lightenRect:(CGRect)rect withLevel:(CGFloat)level {
    return [self tintedImageWithColor:[UIColor whiteColor] rect:rect level:level];
}

// Dark: Level
-(UIImage*)darkenWithLevel:(CGFloat)level {
    return [self tintedImageWithColor:[UIColor blackColor] level:level];
}

// Dark: Level + Insets
-(UIImage*)darkenWithLevel:(CGFloat)level insets:(UIEdgeInsets)insets {
    return [self tintedImageWithColor:[UIColor blackColor] insets:insets level:level];
}

// Dark: Level + Rect
-(UIImage*)darkenRect:(CGRect)rect withLevel:(CGFloat)level {
    return [self tintedImageWithColor:[UIColor blackColor] rect:rect level:level];
}

@end
