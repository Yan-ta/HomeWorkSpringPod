//
//  ViewController.swift
//  HomeWorkSpringPod
//
//  Created by Ян Таше on 07.04.2022.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var runAnimationButton: UIButton!
    @IBOutlet var spingView: SpringView!
    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    var idOfCurrentAnimation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        spingView.layer.cornerRadius = 5
        runAnimationButton.layer.cornerRadius = 5
        
    }


    @IBAction func runAnimationButtonAction(_ sender: Any) {
            let currentAnimation = MyAnimation(typeOfAnimation: animations[idOfCurrentAnimation])
            spingView.animation = currentAnimation.typeOfAnimation
            spingView.curve = currentAnimation.curveOfAnimation
            spingView.delay = CGFloat(currentAnimation.delay)
            spingView.duration = CGFloat(currentAnimation.duration)
            spingView.animate()
            animationLabel.text = "Animation: \(currentAnimation.typeOfAnimation)"
            curveLabel.text = "Curve: \(currentAnimation.curveOfAnimation)"
            durationLabel.text = "Duration: \(currentAnimation.duration)"
            delayLabel.text = "Delay: \(currentAnimation.delay)"
            idOfCurrentAnimation += 1
            runAnimationButton.setTitle(animations[idOfCurrentAnimation], for: .normal)
    }
}

