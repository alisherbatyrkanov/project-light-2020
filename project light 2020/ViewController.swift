//
//  ViewController.swift
//  project light 2020
//
//  Created by Alisher Batyrkanov on 03.02.2020.
//  Copyright © 2020 Alisher Batyrkanov. All rights reserved.
//

import AVFoundation
import UIKit

class ViewController: UIViewController {
    
    var lightOn = false

    @IBAction func buttonPressed(_ sender: UIButton) {
            lightOn = !lightOn
        
        updateUI()
    }
    
    func updateUI() {
        let device = AVCaptureDevice.default(for: AVMediaType.video)
        
        if let dev = device, dev.hasTorch {
            view.backgroundColor = .black
            do {
                try dev.lockForConfiguration()
                    dev.torchMode = lightOn ? .on : .off
                    dev.unlockForConfiguration()
            } catch {
               print(error)
            }
        } else {
                view.backgroundColor = lightOn ? .white : .black
            }
        
        }
       
//        if lightOn {
//            view.backgroundColor = .white
//        } else {
//            view.backgroundColor = .black
//        }
//    }
    
override var prefersStatusBarHidden: Bool {
        return true
    }

    
override func viewDidLoad() {
        super.viewDidLoad()
        
      //  updateUI()
        
        
    }


}

