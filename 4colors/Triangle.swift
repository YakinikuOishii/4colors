//
//  Triangle.swift
//  4colors
//
//  Created by 笠原未来 on 2017/09/12.
//  Copyright © 2017年 笠原未来. All rights reserved.
//

import UIKit

class TriangleButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    var touchCount: Int! = 0
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        drawTriangle()
    }
    
    private func drawTriangle() {
        let path = createTrianglePath()
        
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        
        self.layer.masksToBounds = true
        self.layer.mask = mask
        
        let borderShape = CAShapeLayer()
        borderShape.path = path.cgPath
        borderShape.lineWidth = 4.0
        borderShape.strokeColor = UIColor.red.cgColor
        borderShape.fillColor = UIColor.clear.cgColor
        self.layer.insertSublayer(borderShape, at: 0)
    }
    
    private func createTrianglePath() -> UIBezierPath {
        let rect = self.frame
        let path = UIBezierPath()
        path.move(to: CGPoint(x:rect.width, y:0)) // 座標１
        path.addLine(to: CGPoint(x:rect.width, y:rect.height)) // 座標2
        path.addLine(to: CGPoint(x:0, y:rect.height)) // 座標3
        path.close() // 座標間を閉じる
        return path
    }
    
    private func changecolor() {
        touchCount = touchCount + 1
        if touchCount % 10 == 2 {
            backgroundColor = UIColor.blue
            
        }else if touchCount % 10 == 4 {
            backgroundColor = UIColor.red
            
        }else if touchCount % 10 == 6{
            backgroundColor = UIColor.yellow
            
        }else if touchCount % 10 == 8 {
            backgroundColor = UIColor.green
            
        }else if touchCount % 10 == 0{
            touchCount = 2
            backgroundColor = UIColor.blue
        }
        print(touchCount)
    }

    
    
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        if !createTrianglePath().contains(point) {
            // タッチ領域外
            return nil
        } else {
            changecolor()
            return super.hitTest(point, with: event)
        }
    }
}

