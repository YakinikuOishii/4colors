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
        path.close() // 座標間を閉じるc
        return path
    }
    
    func changecolor() {
        touchCount = touchCount + 1
        if touchCount == 1 {
            TriangleButton.setTitleColor(UIColor.blue, for: .normal)
        }else if touchCount == 2 {
            TriangleButton.backgroundColor = UIColor.red
        }else if touchCount == 3 {
            TriangleButton.backgroundColor = UIColor.yellow
        }else if touchCount == 4 {
            TriangleButton.backgroundColor = UIColor.green
        }else if touchCount >= 5 {
            touchCount = 1
            TriangleButton.backgroundColor = UIColor.blue
        }else{
            
        }

    
    
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        if !createTrianglePath().contains(point) {
            // タッチ領域外
            return nil
        } else {
            return super.hitTest(point, with: event)
        }
    }
}

