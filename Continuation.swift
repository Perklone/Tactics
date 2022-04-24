//
//  File.swift
//  LearnTactics
//
//  Created by Rizky Maulana on 24/04/22.
//

import Foundation
import UIKit

class Continuation: UIViewController {
    var titleLabel: UILabel = {
        var x = UILabel()
        x.text = "That was a lot!"
        x.font = UIFont.systemFont(ofSize: 54, weight: .bold)
        x.translatesAutoresizingMaskIntoConstraints = false
        return x
    }()
    var subLabel: UILabel = {
        var x = UILabel()
        x.text = """
Have you came up with your own formation?
Let's see it!
"""
        x.lineBreakMode = .byWordWrapping
        x.numberOfLines = 0
        x.font = UIFont.systemFont(ofSize: 36.0, weight: .medium)
        x.translatesAutoresizingMaskIntoConstraints = false
        x.textAlignment = .center
        return x
      
        
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupIntro()
    }
    
}
extension Continuation {
    func setupIntro(){
        view.addSubview(titleLabel)
        view.addSubview(subLabel)
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: -20).isActive = true
        subLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        subLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor).isActive = true
      
    }
}
