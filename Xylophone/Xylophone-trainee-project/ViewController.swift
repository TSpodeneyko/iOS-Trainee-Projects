//
//  ViewController.swift
//  Xylophone-trainee-project
//
//  Created by Timofey Spodeneyko on 04.11.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var player: AVAudioPlayer!
    
    func playSound(soundName: String) {
        player = try! AVAudioPlayer(contentsOf: Bundle.main.url(forResource: soundName, withExtension: "wav")!)
        player.play()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let secondsToDelay = 0.2
        
        sender.alpha = 0.5
        playSound(soundName: sender.currentTitle!)
        DispatchQueue.main.asyncAfter(deadline: .now() + secondsToDelay) {
            sender.alpha = 1
        }
    }
}
