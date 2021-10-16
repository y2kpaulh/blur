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
       let bgViewFrame = CGRect(x: 20, y: 20, width: self.view.bounds.width - 40, height: self.view.bounds.height - 40)
        
        let bgView = UIView(frame: bgViewFrame)
        
        self.view.addSubview(bgView)
        let visualEffectView = VisualEffectView(frame: CGRect(x: 0, y: 0, width:  self.view.bounds.width - 40, height: self.view.bounds.height - 40))

        // Configure the view with tint color, blur radius, etc
        visualEffectView.colorTint = .gray
        visualEffectView.colorTintAlpha = 0.4
        visualEffectView.blurRadius = 15
        visualEffectView.scale = 1.0
        visualEffectView.layer.masksToBounds = true
        visualEffectView.layer.cornerRadius = 8

        bgView.insertSubview(visualEffectView, at: 0)
        let vibrancyEffect = UIVibrancyEffect(blurEffect: visualEffectView.effect as! UIBlurEffect)

        let innerVisualEffectView = UIVisualEffectView(effect: vibrancyEffect)
        innerVisualEffectView.frame = CGRect(x: 0, y: 0, width:  self.view.bounds.width - 40, height: self.view.bounds.height - 40)

        // 3
        visualEffectView.contentView.addSubview(innerVisualEffectView)

        // 4
        let label = UILabel()
        label.text = "Zedd"
        label.textAlignment = .center
        label.frame = CGRect(x: 0, y: 0, width:  self.view.bounds.width - 40, height: self.view.bounds.height - 40)
        innerVisualEffectView.contentView.addSubview(label)
    }


}

