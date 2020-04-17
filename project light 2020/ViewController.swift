//
//  ViewController.swift
//  project light 2020
//
//  Created by Alisher Batyrkanov on 03.02.2020.
//  Copyright © 2020 Alisher Batyrkanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = false

    @IBAction func buttonPressed(_ sender: UIButton) {
            lightOn = !lightOn
        
        updateUI()
    }
    
    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
//        if lightOn {
//            view.backgroundColor = .white
//        } else {
//            view.backgroundColor = .black
//        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
        
    }


}

