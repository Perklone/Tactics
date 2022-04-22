//
//  File.swift
//  LearnTactics
//
//  Created by Rizky Maulana on 22/04/22.
//

import Foundation
import UIKit
class intro3ViewController: UIViewController {
    let pitchImage = UIImageView()
    let titleLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleIntro()
        setupIntro()
    }
    init(textImage: String,textLabel: String){
        super.init(nibName: nil, bundle: nil)
        pitchImage.image = UIImage(named: textImage)
        titleLabel.text = textLabel
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func createPieces() -> UIImageView {
        let x = UIImageView()
        x.image = UIImage(named: "piecest")
        x.heightAnchor.constraint(equalToConstant: 100).isActive = true
        x.widthAnchor.constraint(equalToConstant: 100).isActive = true
        x.translatesAutoresizingMaskIntoConstraints = false
        
        return x
    }
}
extension intro3ViewController{
    func styleIntro(){
        pitchImage.contentMode = .scaleAspectFit
        pitchImage.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = UIFont.boldSystemFont(ofSize: 54.0)
        titleLabel.lineBreakMode = .byWordWrapping
        titleLabel.numberOfLines = 0
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        

    }
    func setupIntro(){
        let p1 = createPieces()
        let p2 = createPieces()
        let p3 = createPieces()
        let p4 = createPieces()
        let p5 = createPieces()
        let p6 = createPieces()
        let p7 = createPieces()
        let p8 = createPieces()
        let p9 = createPieces()
        let p10 = createPieces()
        let p11 = createPieces()
        
        view.addSubview(pitchImage)
        view.addSubview(titleLabel)
        view.addSubview(p1)
        view.addSubview(p2)
        view.addSubview(p3)
        view.addSubview(p4)
        view.addSubview(p5)
        view.addSubview(p6)
        view.addSubview(p7)
        view.addSubview(p8)
        view.addSubview(p9)
        view.addSubview(p10)
        view.addSubview(p11)
        
        pitchImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        pitchImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -150).isActive = true
        p1.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 250).isActive = true
        p1.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -80).isActive = true
        
        p2.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 50).isActive = true
        p2.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -250).isActive = true
        p3.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 175).isActive = true
        p3.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -180).isActive = true
        p4.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 325).isActive = true
        p4.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -180).isActive = true
        p5.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 460).isActive = true
        p5.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -250).isActive = true
        p6.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 175).isActive = true
        p6.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -400).isActive = true
        p7.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 325).isActive = true
        p7.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -400).isActive = true
        p8.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 50).isActive = true
        p8.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -600).isActive = true
        p9.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 460).isActive = true
        p9.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -600).isActive = true
        p10.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 250).isActive = true
        p10.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -650).isActive = true
        p11.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 250).isActive = true
        p11.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -750).isActive = true
        
    }
    @objc func handleGesture(gesture:UIPanGestureRecognizer){
        if gesture.state == .began {
        
        }else if gesture.state == .changed {
            let translation = gesture.translation(in: self.view)
            
        }else if gesture.state == .ended {
            
        }
    }
}
// MARK: - Touches

