//
//  ViewController.swift
//  NC1
//
//  Created by Benjamin Purbowasito on 16/05/19.
//  Copyright © 2019 iosda Ben. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var musicEffect: AVAudioPlayer = AVAudioPlayer()
    var musicEffect1: AVAudioPlayer = AVAudioPlayer()
    var musicEffect2: AVAudioPlayer = AVAudioPlayer()
    var musicEffect3: AVAudioPlayer = AVAudioPlayer()
    var musicEffect4: AVAudioPlayer = AVAudioPlayer()
    var musicEffect5: AVAudioPlayer = AVAudioPlayer()
    var musicEffect6: AVAudioPlayer = AVAudioPlayer()
    var musicEffect7: AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let musicFile = Bundle.main.path(forResource: "test", ofType: ".m4a")
        do {
            try musicEffect = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile!))
        }
        catch {
            print(error)
        }
        
        let musicFile1 = Bundle.main.path(forResource: "2", ofType: ".m4a")
        do {
            try musicEffect1 = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile1!))
        }
        catch {
            print(error)
        }
        
        
    }
    @IBAction func playTone1(_ sender: Any) {
        musicEffect.play()
}
    @IBAction func playTone2(_ sender: Round3Dbutton) {
        musicEffect1.play()
    }
}
