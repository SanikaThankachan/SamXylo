//
//  ViewController.swift
//  Xylophone
//
//  Created by Zakkariya K.A on 03/11/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
 
    var audio = AVAudioPlayer()
    var soundArray = ["sing1","song2","song3","song4","song5","song6","song7"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
//        print("\(sender.tag)")
//        let selectedsound = soundArray[1]
//        playingSOund(chooseSound: selectedsound)
        
        let value = sender.titleLabel?.text
        print("\(value!)")
        
        switch(value!)
        {
          case "1" : playingSOund(chooseSound: soundArray[0])
        case "2" : playingSOund(chooseSound: soundArray[1])
        case "3" : playingSOund(chooseSound: soundArray[2])
        case "4" : playingSOund(chooseSound: soundArray[3])
        case "5" : playingSOund(chooseSound: soundArray[4])
        case "6" : playingSOund(chooseSound: soundArray[5])
        case "7" : playingSOund(chooseSound: soundArray[6])
        
          default : break
        }
    }
    func playingSOund(chooseSound : String){
        print("\(chooseSound)")
        guard let url = Bundle.main.url(forResource: chooseSound, withExtension: "wav")
           else {
               print("no")
               return
           }
           do {
               print("playing")
              audio = try AVAudioPlayer(contentsOf: url)
              audio.play()
           }
           catch {
           }
        
    }
    
}

