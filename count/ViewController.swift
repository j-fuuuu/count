//
//  ViewController.swift
//  count
//
//  Created by 藤井玖光 on 2022/08/11.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //ドラムを表示する箱を作る
    @IBOutlet var drumButton: UIButton!
    
    //ピアノを表示する箱を作る
    @IBOutlet var pianoButton: UIButton!
    
    //ギターを表示する箱を作る
    @IBOutlet var guitarButton: UIButton!
    
    //ドラムのサウンドファイルを読み込んでプレイヤーを作る
    let drumSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    //ピアノのサウンドファオルを読み込んでプレイヤーを作る
    let pianoSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    
    //ギターのサウンドファオルを読み込んでプレイヤーを作る
    let guitarSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //ドラムがタップされた時に呼ばれる
    @IBAction func touchDownDrumButton(){
        
        //ドラムがなっている画像に切り替える
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        
        //ドラムの音を巻き戻す
        drumSoundPlayer.currentTime = 0
        
        //ドラムの音を再生する
        drumSoundPlayer.play()
        
    }

    //ドラムボタンの上でタッチが終わる時に呼ばれる
    @IBAction func touchUpDrumButton(){
        
        //ドラムがなっていない画像に切り替える
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }
    
    //ピアノがタップされた時に呼ばれる
    @IBAction func touchDownPianoButton(){
      
        //ピアノがなっている画像に切り替える
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        
        //ピアノの音を巻き戻す
        pianoSoundPlayer.currentTime = 0
        
        //ピアノの音を再生する
        pianoSoundPlayer.play()
    }
    
    //ピアノボタンの上でタッチが終わる時に呼ばれる
    @IBAction func touchUpPianoButton(){
        
        //ピアノがなっていない画像に切り替える
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
        
    }
    
    //ギターがタップされた時に呼ばれる
    @IBAction func touchDownGuitarButton(){
      
        //ギターがなっている画像に切り替える
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        
        //ギターの音を巻き戻す
        guitarSoundPlayer.currentTime = 0
        
        //ギターの音を再生する
        guitarSoundPlayer.play()
    }
    //ギターボタンの上でタッチが終わる時に呼ばれる
    @IBAction func touchUpGuitarButton(){
        
        //ギターがなっていない画像に切り替える
        guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
    }
    
}
