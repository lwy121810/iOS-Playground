//
//  UIView+CSExtension.swift
//  CSSwiftExtension
//
//  Created by Chris Hu on 16/12/25.
//  Copyright © 2016年 com.icetime17. All rights reserved.
//

import UIKit

// MARK: - UIView frame Related

public extension UIView {

    var cs_left : CGFloat {
        get {
            return self.frame.minX
        }
        
        set(newValue) {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }
    
    var cs_right : CGFloat {
        get {
            return self.frame.maxX
        }
        
        set(newValue) {
            var frame = self.frame
            frame.origin.x = newValue - frame.size.width
            self.frame = frame
        }
    }
    
    var cs_top : CGFloat {
        get {
            return self.frame.minY
        }
        
        set(newValue) {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }
    
    var cs_bottom : CGFloat {
        get {
            return self.frame.maxY
        }
        
        set(newValue) {
            var frame = self.frame
            frame.origin.y = newValue - frame.size.height
            self.frame = frame
        }
    }
    
    var cs_width : CGFloat {
        get {
            return self.frame.width
        }
        
        set(newValue) {
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
    }
    
    var cs_height : CGFloat {
        get {
            return self.frame.height
        }
        
        set(newValue) {
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
    }
    
}


// MARK: - snapShot

public extension UIView {
    
    public func cs_snapShot() -> UIImage {
        UIGraphicsBeginImageContext(self.bounds.size)
        self.layer.render(in: UIGraphicsGetCurrentContext()!)
        let snapShot: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return snapShot
    }
    
}
