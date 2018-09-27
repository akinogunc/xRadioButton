//
//  ViewController.swift
//  xRadioButton
//
//  Created by akinogunc on 09/27/2018.
//  Copyright (c) 2018 akinogunc. All rights reserved.
//

import UIKit
import xRadioButton

class ViewController: UIViewController, xRadioButtonDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let screenRect = UIScreen.main.bounds
        
        let radioButton = xRadioButton(title: "Water", frame: CGRect(x: (screenRect.size.width-120)/2, y: 150, width: 120, height: 40), font: UIFont.boldSystemFont(ofSize: 14), color: UIColor.cyan)
        radioButton.tag = 1
        radioButton.delegate = self
        self.view.addSubview(radioButton)
        
        let radioButton2 = xRadioButton(title: "Milk", frame: CGRect(x: (screenRect.size.width-120)/2, y: 250, width: 120, height: 40), font: UIFont.boldSystemFont(ofSize: 14), color: UIColor.green)
        radioButton2.tag = 2
        radioButton2.delegate = self
        self.view.addSubview(radioButton2)
        
        let radioButton3 = xRadioButton(title: "Cheese", frame: CGRect(x: (screenRect.size.width-120)/2, y: 350, width: 120, height: 40), font: UIFont.boldSystemFont(ofSize: 14), color: UIColor.orange)
        radioButton3.tag = 3
        radioButton3.delegate = self
        self.view.addSubview(radioButton3)
        
        let radioButton4 = xRadioButton(title: "Beer", frame: CGRect(x: (screenRect.size.width-120)/2, y: 450, width: 120, height: 40), font: UIFont.boldSystemFont(ofSize: 14), color: UIColor.magenta)
        radioButton4.tag = 4
        radioButton4.delegate = self
        self.view.addSubview(radioButton4)

    }

    func didSelectButton(sender:xRadioButton) {
        print("Button \(sender.tag) is \(sender.isSelected)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

