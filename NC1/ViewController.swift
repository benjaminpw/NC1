//
//  ViewController.swift
//  NC1
//
//  Created by Benjamin Purbowasito on 16/05/19.
//  Copyright © 2019 iosda Ben. All rights reserved.
//

import UIKit
import AVFoundation
//import AudioToolbox.AudioServices

//let vibrate = SystemSoundID(kSystemSoundID_Vibrate)

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
        let musicFile = Bundle.main.path(forResource: "1", ofType: ".mp3")
        let musicFile1 = Bundle.main.path(forResource: "2", ofType: ".mp3")
        let musicFile2 = Bundle.main.path(forResource: "3", ofType: ".mp3")
        let musicFile3 = Bundle.main.path(forResource: "4", ofType: ".mp3")
        let musicFile4 = Bundle.main.path(forResource: "5", ofType: ".mp3")
        let musicFile5 = Bundle.main.path(forResource: "6", ofType: ".mp3")
        let musicFile6 = Bundle.main.path(forResource: "7", ofType: ".mp3")
        let musicFile7 = Bundle.main.path(forResource: "8", ofType: ".mp3")
        do {
            try musicEffect = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile!))
            try musicEffect1 = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile1!))
            try musicEffect2 = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile2!))
            try musicEffect3 = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile3!))
            try musicEffect4 = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile4!))
            try musicEffect5 = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile5!))
            try musicEffect6 = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile6!))
            try musicEffect7 = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile7!))
        }
        catch {
            print(error)
        }
    }
    let impact = UIImpactFeedbackGenerator()
    let impactFeedbackGenerator: (
    light: UIImpactFeedbackGenerator,
    medium: UIImpactFeedbackGenerator,
    heavy: UIImpactFeedbackGenerator) = (
        
    UIImpactFeedbackGenerator(style: .light),
    UIImpactFeedbackGenerator(style: .medium),
    UIImpactFeedbackGenerator(style: .heavy)
    )
    
    
    @IBAction func playTone1(_ sender: Any) {
//    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
//        impact.impactOccurred()
        impactFeedbackGenerator.heavy.prepare()
        impactFeedbackGenerator.heavy.impactOccurred()
        if musicEffect.isPlaying {
            musicEffect.pause()
        }
        musicEffect.currentTime = 0
        musicEffect.play()
}
    @IBAction func playTone2(_ sender: Any) {
//        impact.impactOccurred()
        impactFeedbackGenerator.heavy.prepare()
        impactFeedbackGenerator.heavy.impactOccurred()
        if musicEffect1.isPlaying {
            musicEffect1.pause()
    }
    musicEffect1.currentTime = 0
    musicEffect1.play()
}
    @IBAction func playTone3(_ sender: Any) {
//        impact.impactOccurred()
        impactFeedbackGenerator.heavy.prepare()
        impactFeedbackGenerator.heavy.impactOccurred()
        if musicEffect2.isPlaying {
            musicEffect2.pause()
        }
        musicEffect2.currentTime = 0
        musicEffect2.play()
    }
    @IBAction func playTone4(_ sender: Any) {
//        impact.impactOccurred()
        impactFeedbackGenerator.medium.prepare()
        impactFeedbackGenerator.medium.impactOccurred()
        if musicEffect3.isPlaying {
            musicEffect3.pause()
        }
        musicEffect3.currentTime = 0
        musicEffect3.play()
    }
    @IBAction func playTone5(_ sender: Any) {
//        impact.impactOccurred()
        impactFeedbackGenerator.medium.prepare()
        impactFeedbackGenerator.medium.impactOccurred()
        if musicEffect4.isPlaying {
            musicEffect4.pause()
        }
        musicEffect4.currentTime = 0
        musicEffect4.play()
    }
    @IBAction func playTone6(_ sender: Any) {
//        impact.impactOccurred()
        impactFeedbackGenerator.medium.prepare()
        impactFeedbackGenerator.medium.impactOccurred()
        if musicEffect5.isPlaying {
            musicEffect5.pause()
        }
        musicEffect5.currentTime = 0
        musicEffect5.play()
    }
    @IBAction func playTone7(_ sender: Any) {
//        impact.impactOccurred()
        impactFeedbackGenerator.light.prepare()
        impactFeedbackGenerator.light.impactOccurred()
        if musicEffect6.isPlaying{
            musicEffect6.pause()
        }
        musicEffect6.currentTime = 0
        musicEffect6.play()
    }
    @IBAction func playTone8(_ sender: Any) {
//        impact.impactOccurred()
        impactFeedbackGenerator.light.prepare()
        impactFeedbackGenerator.light.impactOccurred()
    if musicEffect7.isPlaying{
        musicEffect7.pause()
        }
        musicEffect7.currentTime = 0
        musicEffect7.play()
    }
    
    
    
    
    @IBAction func highLight1(_ sender: UIButton) {
        let currentColor = sender.backgroundColor
        UIView.animate(withDuration: 0.1, animations: {
            sender.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        }) { (isFinished) in
            UIView.animate(withDuration: 0.1, animations: {
                sender.backgroundColor = currentColor
            })
        }
    }
    
    
    
}

