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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let musicFile = Bundle.main.path(forResource: "1", ofType: ".m4a")
        do {
            try musicEffect = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile!))
        }
        catch {
            print(error)
        }
        
        
    }
    @IBAction func playTone1(_ sender: Any) {
        musicEffect.play()
        }
}
