//
//  ViewController.swift
//  TouchTest
//
//  Created by 笠原未来 on 2017/08/31.
//  Copyright © 2017年 笠原未来. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 正解判定が自動で出来るようにしたい
    // ビューコントローラーを増やさずに多くのステージを作りたい　→　今のやり方だとメソッドが増え過ぎる？
    // 画像の透明部分を無視できるようにしたい
    
    // http://seeku.hateblo.jp/entry/2016/07/02/175420 画像にタッチイベントを追加！
    
    var touchCount: Int = 1
    
    @IBOutlet var topImage: UIImageView!
    @IBOutlet var bottomImage: UIImageView!
    @IBOutlet var rightImage: UIImageView!
    @IBOutlet var leftImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // withRenderingModeを利用すれば、tintColorで画像の色を指定することが出来る
        topImage.image = UIImage(named: "top.png")?.withRenderingMode(.alwaysTemplate)
        bottomImage.image = UIImage(named: "bottom.png")?.withRenderingMode(.alwaysTemplate)
        rightImage.image = UIImage(named: "top.png")?.withRenderingMode(.alwaysTemplate)
        leftImage.image = UIImage(named: "top.png")?.withRenderingMode(.alwaysTemplate)
        
        // Do any additional setup after loading the view, typically from a nib.
        
        topImage.tintColor = UIColor.green
        bottomImage.tintColor = UIColor.green
        rightImage.tintColor = UIColor.green
        leftImage.tintColor = UIColor.green
    }
    
    @IBAction func changeColor1() {
        touchCount = touchCount + 1
        
        if touchCount == 1 {
            topImage.tintColor = UIColor.green
        }else if touchCount == 2 {
            topImage.tintColor = UIColor.brown
            
        }else if touchCount == 3 {
            topImage.tintColor = UIColor.red
            
        }else if touchCount == 4 {
            topImage.tintColor = UIColor.yellow
            
        }else if touchCount >= 5 {
            touchCount = 1
            topImage.tintColor = UIColor.green
        }else{
            
        }
        print("\(touchCount)top" )
    }
    
    @IBAction func changeColor2() {
        touchCount = touchCount + 1
        
        if touchCount == 1 {
            bottomImage.tintColor = UIColor.green
        }else if touchCount == 2 {
            bottomImage.tintColor = UIColor.brown
        }else if touchCount == 3 {
            bottomImage.tintColor = UIColor.red
        }else if touchCount == 4 {
            bottomImage.tintColor = UIColor.yellow
        }else if touchCount >= 5 {
            touchCount = 1
            bottomImage.tintColor = UIColor.green
        }else{
            
        }
        print("\(touchCount)bottom" )
    }
    
    @IBAction func changeColor3() {
        touchCount = touchCount + 1
        
        if touchCount == 1 {
            rightImage.tintColor = UIColor.green
        }else if touchCount == 2 {
            rightImage.tintColor = UIColor.brown
        }else if touchCount == 3 {
            rightImage.tintColor = UIColor.red
        }else if touchCount == 4 {
            rightImage.tintColor = UIColor.yellow
        }else if touchCount >= 5 {
            touchCount = 1
            rightImage.tintColor = UIColor.green
        }else{
            
        }
        print("\(touchCount)right" )
    }
    
    @IBAction func changeColor4() {
        touchCount = touchCount + 1
        
        if touchCount == 1 {
            leftImage.tintColor = UIColor.green
        }else if touchCount == 2 {
            leftImage.tintColor = UIColor.brown
        }else if touchCount == 3 {
            leftImage.tintColor = UIColor.red
        }else if touchCount == 4 {
            leftImage.tintColor = UIColor.yellow
        }else if touchCount >= 5 {
            touchCount = 1
            leftImage.tintColor = UIColor.green
        }else{
            
        }
        print("\(touchCount)left" )
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

