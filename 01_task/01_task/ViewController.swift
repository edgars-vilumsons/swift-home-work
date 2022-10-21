//
//  ViewController.swift
//  01_task
//
//  Created by Edgars Vilumsons on 21/10/2022.
//

import UIKit

class ViewController: UIViewController {

let words: [String] = ["xcode", "ios", "playground", "iphone", "ipad", "device"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let wordLabel = UILabel()
        wordLabel.text = words.randomElement()
        wordLabel.textAlignment = .center
        wordLabel.textColor = .black
        wordLabel.font = .systemFont(ofSize: 36, weight: .bold)
        wordLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(wordLabel)
        
        let widthConstraint = NSLayoutConstraint(
            item: wordLabel,
            attribute: .width,
            relatedBy: .equal,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 1.0,
            constant: 250)
        
        let heightConstraint = NSLayoutConstraint(
            item: wordLabel,
            attribute: .height,
            relatedBy: .equal,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 1.0,
            constant: 100)
        
        let xConstraint = NSLayoutConstraint(
            item: wordLabel,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: self.view,
            attribute: .centerX,
            multiplier: 1, constant: 0)
        
        let yConstraint = NSLayoutConstraint(
            item: wordLabel,
            attribute: .centerY,
            relatedBy: .equal,
            toItem: self.view,
            attribute: .centerY,
            multiplier: 1,
            constant: 0)

        NSLayoutConstraint.activate([widthConstraint, heightConstraint, xConstraint, yConstraint])
    }
}

