//
//  UIImage+KYCategory.swift
//  UIImage+KYCategory_swift
//
//  Created by kingly on 2016/11/11.
//  Copyright © 2016年 Software (https://github.com/kingly09/UIImage+KYCategory) by kingly inc.
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
// THE SOFTWARE. . All rights reserved.
//

import UIKit

extension UIImage {


    ///  Just change a colored color image, is to change the image TintColo
    ///
    /// - Parameter tintColor: Need to change the color of the color
    /// - Returns: Returns an image
    func imageWithTintColor (tintColor: UIColor? = nil, alpha: CGFloat) -> UIImage?  {

        let rect = CGRect(x: 0.0, y: 0.0, width: self.size.width, height: self.size.height)

        UIGraphicsBeginImageContextWithOptions(rect.size,false,self.scale)

        draw(in: rect)

        let ctx = UIGraphicsGetCurrentContext()

        ctx!.setFillColor((tintColor?.cgColor)!)
        
        ctx!.setAlpha(alpha);
        
        ctx?.setBlendMode(.sourceAtop)
        
        ctx!.fill(rect);
        
        let result = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        return result
    }
}
