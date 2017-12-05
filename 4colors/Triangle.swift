//
//  Triangle.swift
//  4colors
//
//  Created by 笠原未来 on 2017/09/12.
//  Copyright © 2017年 笠原未来. All rights reserved.
//

import UIKit

class TriangleButton: UIButton {
    
    var touchCount: Int! = 0
    
    var location: CGPoint!
    
    let pixelDataByteSize = 4
    
    func getColor(pos: CGPoint) -> (UIColor,CGFloat) {
        
        // UIButtonのUIImage
        let imageData = self.imageView?.image?.cgImage?.dataProvider?.data!
        
        // 画像の中からRGBAのデータを抽出
        let data : UnsafePointer = CFDataGetBytePtr(imageData)
//        let scale = UIScreen.main.scale
        
        // タップされたピクセルがUIImageの中でどの位置なのか
//        let address: Int = ((Int)(self.imageView!.image!.size.width) * Int(pos.y * scale)) * pixelDataByteSize
        
        // タップされたポイントが何個めのピクセルなのか
        let address: Int = ((Int(self.imageView!.image!.size.width) * Int(pos.y)) + Int(pos.x)) * pixelDataByteSize
        
        // dataをRGBAに分解
        let r = CGFloat(data[address])
        let g = CGFloat(data[address+1])
        let b = CGFloat(data[address+2])
        let a = CGFloat(data[address+3])
        
        
        
        return (UIColor(red: r, green: g, blue: b, alpha: a), a)
        
    }
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let hitView: UIView? = super.hitTest(point, with: event)
        var alpha = getColor(pos: point).1
        if alpha == 0 {
            return nil
        }else{
            return hitView
        }
    }
    
    func changeColor () {
        touchCount = touchCount + 1
        if touchCount == 0 {
            self.tintColor = UIColor.red
        }else if touchCount == 1 {
            self.tintColor = UIColor.green
        }else if touchCount == 2 {
            self.tintColor = UIColor.yellow
        }else if touchCount == 3 {
            self.tintColor = UIColor.cyan
        }else if touchCount == 4 {
            touchCount = 0
            self.tintColor = UIColor.red
        }
    }
    
    
//    func getLocation (_ sender: Any, for event: UIEvent) {
//        var buttonView = sender as? UIView
//        let touch = event.touches(for: buttonView!)?.first
//        // inにはviewの型でないと入らない
//        location = (touch?.location(in: buttonView))!
//        print(location)
//        let buttonAsTriangle = sender as? TriangleButton
//        let color = buttonAsTriangle?.getColor(pos: location).0
//        print(color!)
//        let alpha = buttonAsTriangle?.getColor(pos: location).1
//        
//        if alpha == 0 {
//        
//        }
    
    }
    
    

