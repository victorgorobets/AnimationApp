//
//  AnimationTypes.swift
//  AnimationApp
//
//  Created by VICTOR on 18.09.2020.
//  Copyright © 2020 VICTOR. All rights reserved.
//

//import Spring

struct AnimationTypes {
    let name: String
    let delay: Int
    let duration: Int
    let velocity: Float
    let curve: String
    
    var getFullInfo: String {
        """
        name: \(name)
        delay: \(delay)
        duration: \(duration)
        velocity: \(String(format: "%.01f",velocity))
        curve: \(curve)
        """
    }
}

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

extension AnimationTypes {
    
    static func createTypes() -> [AnimationTypes] {
        var createdTypes: [AnimationTypes] = []
        let presets = presetOptions.shuffled()
        let curves = curveOptions
        for index in 0..<presets.count {
            let new = AnimationTypes(
                name: presets[index],
                delay: .random(in: 2...3),
                duration: .random(in: 3...5),
                velocity: .random(in: 0.2...0.4),
                curve: curves[Int.random(in: 0..<curves.count)]                    )
            createdTypes.append(new)
        }
        return createdTypes
    }
}
