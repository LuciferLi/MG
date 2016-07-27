//
//  UIImageView.swift
//  zckj
//
//  Created by ChenLiang on 15/11/2.
//  Copyright © 2015年 chuanglink. All rights reserved.
//

import Foundation
import UIKit
extension UIImageView {
    
    func StartRotation() {
        let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
        rotationAnimation.toValue = NSNumber(double: M_PI*2.0)
        rotationAnimation.duration = 2
        rotationAnimation.repeatCount = Float.infinity
        self.layer.addAnimation(rotationAnimation, forKey: "rotationAnimation")
    }
    
    func StopRotation(){
        self.layer.removeAllAnimations()
    }
}