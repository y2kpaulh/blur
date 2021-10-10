//
//  ViewController.swift
//  blur
//
//  Created by Inpyo Hong on 2021/10/07.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let visualEffectView = VisualEffectView(frame: self.view.bounds)

        // Configure the view with tint color, blur radius, etc
        visualEffectView.colorTint = .black
        visualEffectView.colorTintAlpha = 0.1
        visualEffectView.blurRadius = 5
        visualEffectView.scale = 1.0

        self.view.addSubview(visualEffectView)
        
        let vibrancyEffect = UIVibrancyEffect(blurEffect: visualEffectView.effect as! UIBlurEffect)

        let innerVisualEffectView = UIVisualEffectView(effect: vibrancyEffect)
        innerVisualEffectView.frame = self.view.frame

        // 3
        visualEffectView.contentView.addSubview(innerVisualEffectView)

        // 4
        let label = UILabel()
        label.text = "Zedd"
        label.textAlignment = .center
        label.frame = self.view.frame
        innerVisualEffectView.contentView.addSubview(label)
    }


}

