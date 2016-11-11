//
//  ViewController.swift
//  UIImage+KYCategory_swift
//
//  Created by kingly on 2016/11/11.
//  Copyright © 2016年 UIImage+KYCategory   Software (https://github.com/kingly09/UIImage+KYCategory) by kingly inc.
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

import UIKit

class ViewController: UIViewController {



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.


        let gift01ImageView = UIImageView(image: UIImage(named: "ic-gift"))
        //设置大小
        gift01ImageView.frame =  CGRect(x: 50.0, y: 50.0, width: 48.0, height: 48.0)
        self.view!.addSubview(gift01ImageView)


        let gift02ImageView = UIImageView(image: UIImage(named: "ic-gift")?.imageWithTintColor(tintColor: UIColor.blue, alpha: 0.5))
        //设置大小
        gift02ImageView.frame =  CGRect(x: 125.0, y: 50.0, width: 48.0, height: 48.0)
        self.view!.addSubview(gift02ImageView)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

