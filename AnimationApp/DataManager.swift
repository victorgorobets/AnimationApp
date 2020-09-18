//
//  DataManager.swift
//  AnimationApp
//
//  Created by VICTOR on 18.09.2020.
//  Copyright © 2020 VICTOR. All rights reserved.
//

class DataManager {

   static let shared = DataManager()
    
    private init() {}
    
let presetOptions = ["slideLeft",
                     "slideDown",
                     "slideUp",
                     "squeezeLeft",
                     "squeezeRight",
                     "squeezeDown",
                     "squeezeUp",
                     "fadeIn",
                     "fadeOut",
                     "fadeOutIn",
                     "fadeInLeft",
                     "fadeInRight",
                     "fadeInDown",
                     "fadeInUp",
                     "zoomIn",
                     "zoomOut",
                     "fall",
                     "shake",
                     "pop",
                     "flipX",
                     "flipY",
                     "morph",
                     "squeeze",
                     "flash",
                     "wobble",
                     "swing"
]
let curveOptions = ["easeIn",
                    "easeOut",
                    "easeInOut",
                    "linear",
                    "spring",
                    "easeInSine",
                    "easeOutSine",
                    "easeInOutSine",
                    "easeInQuad",
                    "easeOutQuad",
                    "easeInOutQuad",
                    "easeInCubic",
                    "easeOutCubic",
                    "easeInOutCubic",
                    "easeInQuart",
                    "easeOutQuart",
                    "easeInOutQuart",
                    "easeInQuint",
                    "easeOutQuint",
                    "easeInOutQuint",
                    "easeInExpo",
                    "easeOutExpo",
                    "easeInOutExpo",
                    "easeInCirc",
                    "easeOutCirc",
                    "easeInOutCirc",
                    "easeInBack",
                    "easeOutBack",
                    "easeInOutBack"
]

    
}
