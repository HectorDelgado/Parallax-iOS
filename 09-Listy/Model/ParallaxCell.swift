//
//  ParallaxCell.swift
//  09-Listy
//
//  Created by Hector Delgado on 10/3/19.
//  Copyright © 2019 hector delgado. All rights reserved.
//

import UIKit

class ParallaxCell: UITableViewCell {

    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupParallax()
    }
    
    func configureCell(withImage image: UIImage, andDescription desc: String) {
        itemImageView.image = image
        itemLabel.text = desc
    }
    
    func setupParallax() {
        // Set Min/Max values for translation effect
        let min = CGFloat(-30)
        let max = CGFloat(30)
        
        // Create horizontal motion effect
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        // Create vertical motion effect
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        // Create group of motion effects
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion, yMotion]

        // apply motion effects
        itemImageView.addMotionEffect(motionEffectGroup)
    }

}
