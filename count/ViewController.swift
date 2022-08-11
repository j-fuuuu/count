//
//  ViewController.swift
//  count
//
//  Created by 藤井玖光 on 2022/08/11.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //ドラムのサウンドファイルを読み込んでプレイヤーを作る
    let durmSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //ドラムがタップされた時に呼ばれる
    @IBAction func tapDrumButton(){
        
        //ドラムの音を巻き戻す
        durmSoundPlayer.currentTime = 0
        
        //ドラムの音を再生する
        durmSoundPlayer.play()
        
    }
}
