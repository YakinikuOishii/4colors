//
//  ViewController.swift
//  TouchTest
//
//  Created by 笠原未来 on 2017/08/31.
//  Copyright © 2017年 笠原未来. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var button : UIButton!
    
    @IBOutlet var button2: UIButton!
    
//    var testButton: TriangleButton!
    
    var tapLocation: CGPoint!
    
    var touchCuont: Int! = 0
    
    var location: CGPoint!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        testButton.addTarget(self, action: #selector(ViewController.getLocation(sender: )), for: .touchDown)
        // Do any additional setup after loading the view, typically from a nib.
        //        let color = testButton.getColor(pos: CGPoint(dictionaryRepresentation: tapLocation as! CFDictionary)!)
        
        
    }
    
    @IBAction func getTouchLocation(_ sender: Any, for event: UIEvent) {
        //　ボタンをUIViewに変換している　（変換することをキャストという）
        let buttonView = sender as? UIView
        let touch = event.touches(for: buttonView!)?.first
        // inにはviewの型でないと入らない
        location = (touch?.location(in: buttonView))!
        print(location)
        let buttonAsTriangle = button as? TriangleButton
        let color = buttonAsTriangle?.getColor(pos: location).0
        print(color!)
        let alpha = buttonAsTriangle?.getColor(pos: location).1
        print(alpha!)
    }
    
//    func getLocation(sender: Any) {
//        tapLocation = .location(in: testButton)
//    }
//    
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        
//        let touch = touches.first
//        tapLocation = touch!.location(in: testButton)
//        print(tapLocation)
//    }
    
    //    @IBAction func changeColor() {
    //        let color = testButton.getColor(pos: CGPoint(dictionaryRepresentation: tapLocation as! CFDictionary)!)
    //    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //    @IBAction func changecolor(){
    //        touchCuont = touchCuont + 1
    //        if touchCuont == 1 {
    //            button.backgroundColor = UIColor.blue
    //            button2.backgroundColor = UIColor.blue
    //        }else if touchCuont == 2 {
    //            button.backgroundColor = UIColor.red
    //            button2.backgroundColor = UIColor.red
    //        }else if touchCuont == 3 {
    //            button.backgroundColor = UIColor.yellow
    //            button2.backgroundColor = UIColor.yellow
    //        }else if touchCuont == 4 {
    //            button.backgroundColor = UIColor.green
    //            button2.backgroundColor = UIColor.green
    //        }else if touchCuont >= 5 {
    //            touchCuont = 1
    //            button.backgroundColor = UIColor.blue
    //            button2.backgroundColor = UIColor.blue
    //        }else{
    //            
    //        }
    
    
    //    }
}

