//
//  LogoAnimation.swift
//  lfitness
//
//  Created by Dev1 on 3/15/16.
//  Copyright © 2016 fxofficeapp. All rights reserved.
//
import Foundation
import UIKit

class LogoAnimation: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        logoAnimation()
    }
    
    
    func logoAnimation() {
        self.image = UIImage(named: "lfit_logo_74.png")
        
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        for x in 0..<75 {
            let img = UIImage(named: "lfit_logo_\(x).png")
            
            imgArray.append(img!)
        }
        
        self.animationImages = imgArray
        self.animationDuration = 2.22
        self.animationRepeatCount = 1
        self.startAnimating()
    }
    
}