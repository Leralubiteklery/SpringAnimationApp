//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Lera Savchenko on 2.09.22.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet var coreAnimationView: UIView!
    
    @IBOutlet var springAnimationView: SpringView!
    
    private var animationStarted = false
    
    @IBAction func startAnimation(_ sender: UIButton) {
        sender.pulsate()
        
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            options: [.autoreverse, .repeat]) { [unowned self] in
                if !animationStarted {
                    coreAnimationView.frame.origin.x -= 40
                    animationStarted.toggle()
                }
            }
    }
    
    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = "wobble"
        springAnimationView.curve = "easeInOutSine"
        springAnimationView.force = 2
        springAnimationView.duration = 1
        springAnimationView.delay = 1
        springAnimationView.animate()
        
        sender.animation = "swing"
        sender.animate()
    }
}

