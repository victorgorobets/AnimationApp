//
//  ViewController.swift
//  AnimationApp
//
//  Created by VICTOR on 17.09.2020.
//  Copyright © 2020 VICTOR. All rights reserved.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var showView: SpringView!
    @IBOutlet weak var showButtonLabel: DesignableButton!
    @IBOutlet weak var detailInfoLabel: SpringLabel!
    @IBOutlet weak var nameAnimationLabel: UILabel!
    
    private let show = AnimationTypes.createTypes()
    private var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showButtonAction()
    }
    
    
    @IBAction func showButtonAction() {
        let animateShow = show[counter]
        showView.animation = animateShow.name
        nameAnimationLabel.text = "DEMO \(animateShow.name)"
        showView.animate()
        detailInfoLabel.text = animateShow.getFullInfo
        counter = counter < show.count-1 ? counter+1 : 0
        showButtonLabel.setTitle("Next: \(animateShow.name)", for: .normal)
    }
}

