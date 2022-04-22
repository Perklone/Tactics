//
//  File.swift
//  LearnTactics
//
//  Created by Rizky Maulana on 21/04/22.
//

import Foundation
import UIKit

class introViewController: UIViewController{
    
    let imageView = UIImageView()
    let titleLabel = UILabel()
    let subLabel = UILabel()
    override func viewDidLoad() {
            super.viewDidLoad()
            styleIntro()
            setupIntro()
    }
    
    init(imageName: String, titleText: String, subText: String){
        super.init(nibName: nil, bundle: nil)
        imageView.image = UIImage(named: imageName)
        titleLabel.text = titleText
        subLabel.text = subText
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension introViewController {
    
    func styleIntro(){
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = UIFont.boldSystemFont(ofSize: 54.0)
        titleLabel.lineBreakMode = .byWordWrapping
        titleLabel.numberOfLines = 0
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        subLabel.translatesAutoresizingMaskIntoConstraints = false
        subLabel.lineBreakMode = .byWordWrapping
        subLabel.numberOfLines = 0
        subLabel.font = UIFont.systemFont(ofSize: 36.0, weight: .medium)
        

    }
    func setupIntro(){
        view.addSubview(imageView)
        view.addSubview(titleLabel)
        view.addSubview(subLabel)
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -330).isActive = true
        subLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 10).isActive = true
        subLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70).isActive = true
        imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 822).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 1381).isActive = true
    }
}
