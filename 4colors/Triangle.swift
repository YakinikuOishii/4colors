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
    
    let pixelDataByteSize = 4
    
    func getColor(pos: CGPoint) -> UIColor {
        
        // UIButtonのUIImage
        let imageData = self.imageView?.image?.cgImage?.dataProvider?.data!
        
        // 画像の中からRGBAのデータを抽出
        let data : UnsafePointer = CFDataGetBytePtr(imageData)
        let scale = UIScreen.main.scale
        
        // タップされたピクセルがUIImageの中でどの位置なのか
        let address: Int = ((Int)(self.imageView!.image!.size.width) * Int(pos.y * scale)) * pixelDataByteSize
        
        // dataをRGBAに分解
        let r = CGFloat(data[address])
        let g = CGFloat(data[address+1])
        let b = CGFloat(data[address+2])
        let a = CGFloat(data[address+3])
        
        return UIColor(red: r, green: g, blue: b, alpha: a)
    }
    
    private func changecolor() {
        touchCount = touchCount + 1
        if touchCount == 1 {
            backgroundColor = UIColor.blue
            
        }else if touchCount == 2 {
            backgroundColor = UIColor.red
            
        }else if touchCount == 3 {
            backgroundColor = UIColor.yellow
            
        }else if touchCount == 4 {
            backgroundColor = UIColor.green
            
        }else if touchCount == 5 {
            touchCount = 1
            backgroundColor = UIColor.blue
        }
        print(touchCount)
    }
    
}

