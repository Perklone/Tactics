//
//  File.swift
//  LearnTactics
//
//  Created by Rizky Maulana on 24/04/22.
//

import UIKit

class introEndViewController: UIViewController {
    let titleLabel = UILabel()
    
    let subLabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        styleIntro()
        setupIntro()
    }
    init(textLabel: String, textButton:String){
        super.init(nibName: nil, bundle: nil)
        titleLabel.text = textLabel
        subLabel.text = textButton
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
extension introEndViewController {
    func styleIntro(){
        titleLabel.font = UIFont.boldSystemFont(ofSize: 54.0)
        titleLabel.lineBreakMode = .byWordWrapping
        titleLabel.numberOfLines = 0
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        subLabel.font = UIFont.systemFont(ofSize: 36.0, weight: .medium)
        subLabel.translatesAutoresizingMaskIntoConstraints = false
        subLabel.lineBreakMode = .byWordWrapping
        subLabel.numberOfLines = 0
        subLabel.textAlignment = .center
    }
    func setupIntro(){
        view.addSubview(titleLabel)
        view.addSubview(subLabel)
        
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: -20).isActive = true
        subLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        subLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: 45).isActive = true

      
    }

}
