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
        
        let magicButton = UIButton(type: .system)
        magicButton.setTitle("Magic Button", for: .normal)
        magicButton.backgroundColor = .white
        magicButton.translatesAutoresizingMaskIntoConstraints = false
        magicButton.addTarget(self, action: #selector(onTap), for: .touchUpInside)
        view.addSubview(magicButton)
        
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
        
        NSLayoutConstraint.activate([
            widthConstraint,
            heightConstraint,
            xConstraint,
            yConstraint,
            magicButton.widthAnchor.constraint(equalToConstant: 150),
            magicButton.heightAnchor.constraint(equalToConstant: 50),
            magicButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            magicButton.centerYAnchor.constraint(equalTo: wordLabel.topAnchor, constant: +400)])
        
        changeBackgroundColor()
        }
    
    @objc func onTap() {
        changeBackgroundColor()
    }
    
    func changeBackgroundColor() {
            view.backgroundColor = UIColor(
                red: .random(in: 0...1),
                green: .random(in: 0...1),
                blue: .random(in: 0...1),
                alpha: 1
            )
        }
    
    }

    



