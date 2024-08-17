//
//  UIImageExtensions.swift
//  ColorKit
//
//  Created by Boris Emorine on 5/30/20.
//  Copyright © 2020 BorisEmorine. All rights reserved.
//

import AppKit

//public class MacGraphicsImageRendererFormat: NSObject {
//    public var opaque: Bool = false
//    public var prefersExtendedRange: Bool = false
//    public var scale: CGFloat = 2.0
//    public var bounds: CGRect = .zero
//}

extension NSImage {
    
    var resolution: CGSize {
        return CGSize(width: size.width * 1, height: size.height * 1)
    }
    
    func resize(to targetSize: CGSize) -> NSImage {
        guard targetSize != resolution else {
            return self
        }

        let newImage = NSImage(size: targetSize)
        newImage.lockFocus()
        
        // Draw the image in the specified size
        let context = NSGraphicsContext.current
        context?.imageInterpolation = .high
        self.draw(in: CGRect(origin: .zero, size: targetSize), from: CGRect(origin: .zero, size: self.size), operation: .copy, fraction: 1.0)
        
        newImage.unlockFocus()
        
        return newImage
    }
    
//    func resize(to targetSize: CGSize) -> NSImage {
//        guard targetSize != resolution else {
//            return self
//        }
//                
//        let format = MacGraphicsImageRendererFormat()
//        format.scale = 1
//        format.opaque = true
//        let renderer = UIGraphicsImageRenderer(size: targetSize, format: format)
//        let resizedImage = renderer.image { _ in
//            self.draw(in: CGRect(origin: CGPoint.zero, size: targetSize))
//        }
//        
//        return resizedImage
//    }
    
}
