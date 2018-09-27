//
//  ViewController.swift
//  xRadioButton
//
//  Created by akinogunc on 09/27/2018.
//  Copyright (c) 2018 akinogunc. All rights reserved.
//

import UIKit

public protocol xRadioButtonDelegate{
    func didSelectButton(sender:xRadioButton)
}

public class xRadioButton: UIButton {
    
    var color:UIColor!
    public var delegate: xRadioButtonDelegate?
    
    public required init(title:String, frame:CGRect, font:UIFont, color:UIColor) {
        super.init(frame: frame)
        
        self.color = color
        self.backgroundColor = UIColor.clear
        self.titleLabel?.font = font
        self.layer.cornerRadius = 12
        self.layer.borderWidth = 1
        self.layer.borderColor = color.cgColor
        self.setTitle(title, for: .normal)
        self.setTitleColor(color, for: .normal)
        self.addTarget(self, action: #selector(self.clicked), for: UIControl.Event.touchUpInside)
    }
    
    @objc func clicked() -> Void{
        
        if isSelected {
            self.isSelected = false
            
            UIView.transition(with: self.titleLabel!, duration: 0.4, options: .transitionCrossDissolve, animations: {
                self.setTitleColor(self.color, for: .normal)
                self.backgroundColor = UIColor.white
            }, completion: { Void in
                self.delegate?.didSelectButton(sender: self)
            })
            
        }else{
            self.isSelected = true
            
            UIView.transition(with: self.titleLabel!, duration: 0.4, options: .transitionCrossDissolve, animations: {
                self.setTitleColor(UIColor.white, for: .normal)
                self.backgroundColor = self.color
            }, completion: { Void in
                self.delegate?.didSelectButton(sender: self)
            })
            
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
