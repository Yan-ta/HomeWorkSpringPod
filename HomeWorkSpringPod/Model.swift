//
//  Model.swift
//  HomeWorkSpringPod
//
//  Created by Ян Таше on 07.04.2022.
//

import Foundation

let animations: [String] = ["shake", "pop", "morph", "squeeze", "wobble", "swing", "flipX", "flipY", "fall", "squeezeLeft", "squeezeRight", "squeezeDown", "squeezeUp", "slideLeft", "slideRight", "slideDown", "slideUp", "fadeIn", "fadeOut", "fadeInLeft", "fadeInRight", "fadeInDown", "fadeInUp", "zoomIn", "zoomOut", "flash"]

let curve: [String] = ["spring", "linear", "easeIn", "easeOut", "easeInOut"]

struct MyAnimation {
    let typeOfAnimation: String
    let curveOfAnimation: String = "easeOut"
    let delay: Int = 1
    let duration: Int = 2
    init(typeOfAnimation: String) {
        self.typeOfAnimation = typeOfAnimation
    }
}

