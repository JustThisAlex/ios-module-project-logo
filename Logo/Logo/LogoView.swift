//
//  LogoView.swift
//  Logo
//
//  Created by Alexander Supe on 27.01.20.
//  Copyright © 2020 Alexander Supe. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {
    
    override func draw(_ rect: CGRect) {
        let centerX = self.frame.width/2
        let centerY = self.frame.height/2
        
        if let context = UIGraphicsGetCurrentContext() {
            //Shape
            let shapePoints: [CGPoint] = [CGPoint(x: centerX-115, y: centerY-100),
                                          CGPoint(x: centerX+115, y: centerY-100),
                                          CGPoint(x: centerX-115, y: centerY+75),
                                          CGPoint(x: centerX+115, y: centerY+75),
                                          CGPoint(x: centerX, y: centerY+150)]
            context.move(to: shapePoints[0])
            context.addLine(to: shapePoints[1])
            context.addLine(to: shapePoints[3])
            context.addLine(to: shapePoints[4])
            context.addLine(to: shapePoints[2])
            context.addLine(to: shapePoints[0])
            context.setFillColor(CGColor(srgbRed: 0.725, green: 0.078, blue: 0.20, alpha: 1))
            context.fillPath()
            
            //Glyph
            let glyphPoints: [CGPoint] = [CGPoint(x: centerX-10, y: centerY-50),
                                          CGPoint(x: centerX+10, y: centerY-50),
                                          CGPoint(x: centerX+70, y: centerY+50),
                                          CGPoint(x: centerX+39, y: centerY+50),
                                          CGPoint(x: centerX, y: centerY-15),
                                          CGPoint(x: centerX-39, y: centerY+50),
                                          CGPoint(x: centerX-70, y: centerY+50)]
            context.move(to: glyphPoints[0])
            context.addLine(to: glyphPoints[1])
            context.addLine(to: glyphPoints[2])
            context.addLine(to: glyphPoints[3])
            context.addLine(to: glyphPoints[4])
            context.addLine(to: glyphPoints[5])
            context.addLine(to: glyphPoints[6])
            context.addLine(to: glyphPoints[0])
            context.setFillColor(UIColor.white.cgColor)
            context.fillPath()
        }
    }
}
