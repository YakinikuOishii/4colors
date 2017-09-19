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
    
    var touchCuont: Int! = 0
    
    // touchcountを保存　touchcountがボタンごとでバラバラだったら正解判定
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
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

