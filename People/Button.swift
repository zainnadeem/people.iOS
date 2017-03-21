//
//  Button.swift
//  SpotifyCodeChallenge
//
//  Created by Zain Nadeem on 3/20/17.
//  Copyright © 2017 Zain Nadeem. All rights reserved.
//

import Foundation

import UIKit

//custom button for view controller

class Button: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setTitleColor(.white, for: .normal)
        
        self.backgroundColor = .black
        self.layer.cornerRadius = 10
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 1
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
