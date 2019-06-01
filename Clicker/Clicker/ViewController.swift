//
//  ViewController.swift
//  Clicker
//
//  Created by Daichi Hasegawa on 2019/05/26.
//  Copyright © 2019年 Daichi Hasegawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var _btn:UIButton!
    @IBOutlet weak var _txt:UILabel!
    @IBOutlet weak var _input:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func pushBtn(){
        //条件分岐：もし、_input.textが"ぱみゅぱみゅ"だったら"正解"を表示する
        //ヒント：「ぱみゅぱみゅだったら」の条件文は「_input.text == "ぱみゅぱみゅ"」
        //if... else...を使う
        
        if(_input.text == "ぱみゅぱみゅ"){
            _txt.text="正解"
        }
        else if(_input.text == "バッグ"){
            _txt.text = "カバンじゃない！"
        }else{
            _txt.text = "不正解"
        }
    }
    
    // 画面タップでキーボードを閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        _input.endEditing(true);
    }
}

