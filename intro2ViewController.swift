//
//  File.swift
//  LearnTactics
//
//  Created by Rizky Maulana on 21/04/22.
//

import Foundation
import UIKit

class intro2ViewController: UIViewController {
    let imageView = UIImageView()
    let titleLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleIntro()
        setupIntro()
    }
    init(imageName: String, titleText: String){
        super.init(nibName: nil, bundle: nil)
        imageView.image = UIImage(named: imageName)
        titleLabel.text = titleText
      
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension intro2ViewController {
    func styleIntro(){
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = UIFont.boldSystemFont(ofSize: 54.0)
        titleLabel.lineBreakMode = .byWordWrapping
        titleLabel.numberOfLines = 0
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textAlignment = .center
       
    }
    
    func setupIntro(){
        view.addSubview(imageView)
        view.addSubview(titleLabel)
        
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
    }
}
