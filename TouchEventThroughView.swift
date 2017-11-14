//
//  TouchEventThroughView.swift
//  4colors
//
//  Created by 笠原未来 on 2017/11/14.
//  Copyright © 2017年 笠原未来. All rights reserved.
//

import UIKit

class TouchEventThroughView: UIView {
    
    var location: CGPoint!
    
    var alphaBool: Bool!
    
    func getTouchLocation(_ sender: Any, for event: UIEvent) {
        //　ボタンをUIViewに変換している　（変換することをキャストという）
        var buttonView = sender as? UIView
        let touch = event.touches(for: buttonView!)?.first
        // inにはviewの型でないと入らない
        location = (touch?.location(in: buttonView))!
        print(location)
        let buttonAsTriangle = sender as? TriangleButton
        let color = buttonAsTriangle?.getColor(pos: location!).0
        print(color!)
        let alpha = buttonAsTriangle?.getColor(pos: location!).1
        print(alpha!)
        
        if alpha == 0 {
            buttonView = nil
            alphaBool = false
            //            button2
        } else {
            alphaBool = true
        }
        
    }
}
