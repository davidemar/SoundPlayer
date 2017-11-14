//
//  ViewController.swift
//  SoundPlayer
//
//  Created by David Mar on 11/14/17.
//  Copyright © 2017 Piso13. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    var songPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playSound(_ sender: Any) {
        
        guard let path = Bundle.main.path(forResource: "completed1", ofType: "aif")  else { return }
        
        let filePath = NSURL(fileURLWithPath: path)
        songPlayer = try! AVAudioPlayer.init(contentsOf: filePath as URL)
        
        try! AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback, with: AVAudioSessionCategoryOptions.mixWithOthers)
        
        songPlayer?.prepareToPlay()
        songPlayer?.play()
        
    
    }
    
}

