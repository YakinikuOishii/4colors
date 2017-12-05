//
//  ViewController.swift
//  TouchTest
//
//  Created by 笠原未来 on 2017/08/31.
//  Copyright © 2017年 笠原未来. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var button : TriangleButton!
    
    @IBOutlet var button2: TriangleButton!
    
//    var touchCount: Int = 0
//    @IBOutlet var touchEventThrough: TouchEventThroughView!
    
//    var testButton: TriangleButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        button.setImage(UIImage(named: "greenTriangle")?.withRenderingMode(.alwaysTemplate), for: .normal)
        button2.setImage(UIImage(named: "triangle2")?.withRenderingMode(.alwaysTemplate), for: .normal)
        
        button.tintColor = UIColor.red
        button2.tintColor = UIColor.red
        
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
    



