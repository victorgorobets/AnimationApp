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

extension AnimationTypes {
    
    static func createTypes() -> [AnimationTypes] {
        var createdTypes: [AnimationTypes] = []
        let presets = DataManager.shared.presetOptions.shuffled()
        let curves = DataManager.shared.curveOptions
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
