//
//  ViewController.swift
//  TouchTest
//
//  Created by 笠原未来 on 2017/08/31.
//  Copyright © 2017年 笠原未来. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    @IBOutlet var button : TriangleButton!
    
//  @IBOutlet var button2: TriangleButton!
    
    var number: Int!
    
    var buttonArray: [TriangleButton] = []
    
    let color1 = UIColor(red: 0.839, green: 0.364, blue: 1.0, alpha: 1.0)
    
//    var touchCount: Int = 0
//    @IBOutlet var touchEventThrough: TouchEventThroughView!
    
//    var testButton: TriangleButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        number = 0
        
        //buttonArray.append(button)
        for i in 1...39 {
            //print(buttonArray[0])
            var button = TriangleButton()
            buttonArray.append(button)
            //rbuttonArray[i-1].setImage(UIImage(named: "\(i-1).png")?.withRenderingMode(.alwaysTemplate), for: .normal)
            buttonArray[i-1].frame = CGRect(x: i*20, y: 0, width: 402, height: 667)
            print (buttonArray[i-1].image)
            view.addSubview(buttonArray[i-1])
            //button.frame = CGRect(x:0, y:0, width:400, height:200)
            //view.addSubview(button)

        }
        
        
        
//        button.setImage(UIImage(named: "greenTriangle")?.withRenderingMode(.alwaysTemplate), for: .normal)
//        button2.setImage(UIImage(named: "triangle2")?.withRenderingMode(.alwaysTemplate), for: .normal)
        
      //  button.tintColor = color1
//        button2.tintColor = color1
        
//        testButton.addTarget(self, action: #selector(ViewController.getLocation(sender: )), for: .touchDown)
        // Do any additional setup after loading the view, typically from a nib.
        //        let color = testButton.getColor(pos: CGPoint(dictionaryRepresentation: tapLocation as! CFDictionary)!)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func change(tappedButton: TriangleButton) {
        tappedButton.changeColor()
    }
    
    // senderでどのボタンがタップされたか調べてくれる
    
}
    



