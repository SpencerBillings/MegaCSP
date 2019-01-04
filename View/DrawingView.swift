//
//  DrawingView.swift
//  CreativityProject
//
//  Created by Billings, Spencer on 11/1/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class DrawingView : UIView
{

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    public override func draw(_ rect: CGRect) -> Void
    {
        // Drawing code
        createStickFigure().stroke()
        drawTurtle()
        drawStar()
    }
    
    private func createStickFigure() -> UIBezierPath
    {
        let figure : UIBezierPath = UIBezierPath()
        
        UIColor.cyan.setStroke()
        figure.lineWidth = 5.0
        
        figure.addArc(withCenter: CGPoint(x: 200, y: 200),
                      radius: CGFloat(20),
                      startAngle: CGFloat(0),
                      endAngle: CGFloat(2) * CGFloat.pi,
                      clockwise: true)
        
        figure.move(to: CGPoint(x: 200, y:220))
        figure.addLine(to: CGPoint(x: 200, y: 270))
        figure.move(to: CGPoint(x: 180, y:240))
        figure.addLine(to: CGPoint(x: 220, y: 240))
        figure.move(to: CGPoint(x: 200, y:270))
        figure.addLine(to: CGPoint(x: 180, y: 300))
        figure.move(to: CGPoint(x: 200, y:270))
        figure.addLine(to: CGPoint(x: 220, y: 300))

        return figure
    }
    
    private func drawTurtle() -> Void
    {
        let logo = UIBezierPath()
        UIColor.green.setFill()
        logo.move(to: CGPoint(x: 50, y: 250))
        logo.addLine(to: CGPoint(x: 100, y: 300))
        logo.addLine(to: CGPoint(x: 50, y: 350))
        logo.close()
        logo.fill()
    }
    
    private func drawStar() -> Void
    {
        let star = UIBezierPath()
        UIColor.yellow.setFill()
        star.move(to: CGPoint(x: 100, y:100))
        star.addLine(to: CGPoint(x: 130, y: 20)) 
        star.addLine(to: CGPoint(x: 160, y: 100)) //x: 160, y: 100
        star.addLine(to: CGPoint(x: 80, y: 50)) //x: 80, y: 50
        star.addLine(to: CGPoint(x: 190, y: 50)) //x: 190, y: 50
        star.addLine(to: CGPoint(x: 100, y: 100)) //x: 100
        star.close()
        star.fill()
    }

}
