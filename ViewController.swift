//
//  ViewController.swift
//  LearnTactics
//
//  Created by Rizky Maulana on 20/04/22.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 247/255, green: 248/255, blue: 241/255, alpha: 1)
        setupIntro()
        // Do any additional setup after loading the view.
    }
    //MARK: Setup
    func setupIntro(){
       
        view.addSubview(intoImage)
        view.addSubview(headerLabel)
        view.addSubview(continueButton)
        headerLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        headerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        
        continueButton.firstBaselineAnchor.constraint(equalTo: headerLabel.firstBaselineAnchor).isActive = true
        continueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        continueButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        continueButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        intoImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        intoImage.heightAnchor.constraint(equalToConstant: 822).isActive = true
        intoImage.widthAnchor.constraint(equalToConstant: 1381).isActive = true
        
        continueButton.addTarget(self, action: #selector(actionContinuetoSecond(_:)), for: .touchUpInside)
    }
    //MARK: Properties
    var intoImage: UIImageView = {
        let imgView = UIImageView()
        imgView.image = UIImage(named: "undrawJunior")
        
        imgView.contentMode = .scaleAspectFit
        imgView.translatesAutoresizingMaskIntoConstraints = false
        return imgView
    }()
    var headerLabel: UILabel = {
        let header = UILabel()
        header.text = """
Magic of
Football Tactics
"""
        header.font = UIFont.boldSystemFont(ofSize: 54.0)
        header.lineBreakMode = .byWordWrapping
        header.numberOfLines = 0
        header.translatesAutoresizingMaskIntoConstraints = false

        return header
    }()
    var continueButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Continue", for: .normal)
        
        button.backgroundColor = UIColor(red: 46/255, green: 46/255, blue: 44/255, alpha: 1)
        button.contentEdgeInsets = UIEdgeInsets(top: 15, left: 25, bottom: 15, right: 25)
        button.layer.cornerRadius = 10
        
        return button
    }()
    
    //MARK: Function
    @objc func actionContinuetoSecond(_ sender: UIButton){
        navigationController?.pushViewController(SecondTutorialViewController(), animated: true)
    }
}

