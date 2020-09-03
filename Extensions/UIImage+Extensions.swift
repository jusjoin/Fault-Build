//
//  UIImageHelper.swift
//  Fault Build
//
//  Created by Zane on 9/1/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    func getScaledHeightForWidth(width: CGFloat) -> CGFloat{
        let imageWidth = self.size.width
        let imageHeight = self.size.height
        let ratio = imageWidth / imageHeight
        let newHeight = width / ratio
        return newHeight
    }
    
    func getScaledWidthForHeight(height: CGFloat) -> CGFloat {
        let imageWidth = self.size.width
        let imageHeight = self.size.height
        let ratio = imageWidth / imageHeight
        let newWidth = imageHeight * ratio
        return newWidth
    }
    
    func resize(scaledToSize newSize: CGSize) -> UIImage {
        UIGraphicsBeginImageContext(newSize)
        self.draw(in: CGRect(x: 0 ,y: 0 ,width: newSize.width ,height: newSize.height))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!.withRenderingMode(.alwaysOriginal)
    }
    
    func scaledToWidth(width: CGFloat) -> UIImage {
        let height = self.getScaledHeightForWidth(width: width) as CGFloat
        let newSize = CGSize(width: width, height: height)
        let resizedImage = self.resize(scaledToSize: newSize)
        return resizedImage
    }
    
    func scaledToHeight(height: CGFloat) -> UIImage {
        let width = self.getScaledWidthForHeight(height: height) as CGFloat
        let newSize = CGSize(width: width, height: height)
        let resizedImage = self.resize(scaledToSize: newSize)
        return resizedImage
    }
}
