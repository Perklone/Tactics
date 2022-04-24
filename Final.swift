//
//  File.swift
//  LearnTactics
//
//  Created by Rizky Maulana on 25/04/22.
//

import Foundation
import UIKit

class Final: UIViewController {
    let pitchImage = UIImageView()
    let titleLabel = UILabel()
    let subLabel = UILabel()
    private var initialCenter: CGPoint = .zero
    override func viewDidLoad() {
        super.viewDidLoad()
        styleIntro()
        setupIntro()
    }
    
    init(textImage: String,textLabel: String,subTextLabel: String){
        super.init(nibName: nil, bundle: nil)
        pitchImage.image = UIImage(named: textImage)
        titleLabel.text = textLabel
        subLabel.text = subTextLabel
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

extension Final{
    func styleIntro(){
        pitchImage.contentMode = .scaleAspectFit
        pitchImage.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = UIFont.boldSystemFont(ofSize: 54.0)
        titleLabel.lineBreakMode = .byWordWrapping
        titleLabel.numberOfLines = 0
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        subLabel.translatesAutoresizingMaskIntoConstraints = false
        subLabel.font = UIFont.systemFont(ofSize: 36.0, weight: .medium)
        subLabel.lineBreakMode = .byWordWrapping
        subLabel.numberOfLines = 0
        subLabel.textAlignment = .center
        subLabel.heightAnchor.constraint(equalToConstant: 400).isActive = true
        subLabel.widthAnchor.constraint(equalToConstant: 250).isActive = true
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
        view.addSubview(subLabel)
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
        pitchImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: -40).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -150).isActive = true
        
        subLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant:450).isActive = true
        subLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        p1.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 250).isActive = true
        p1.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -250).isActive = true
        
        p2.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 250).isActive = true
        p2.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -300).isActive = true
        
        p3.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 250).isActive = true
        p3.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -350).isActive = true
        p4.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 250).isActive = true
        p4.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -400).isActive = true
        p5.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 250).isActive = true
        p5.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -450).isActive = true
        p6.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 250).isActive = true
        p6.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -500).isActive = true
        p7.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 250).isActive = true
        p7.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -550).isActive = true
        p8.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 250).isActive = true
        p8.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -600).isActive = true
        p9.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 250).isActive = true
        p9.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -650).isActive = true
        p10.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 250).isActive = true
        p10.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -700).isActive = true
        p11.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 250).isActive = true
        p11.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -750).isActive = true
        
        [p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11].forEach {
            let panRecog = UIPanGestureRecognizer(target: self, action: #selector(self.didPan(_:)))
            $0.addGestureRecognizer(panRecog)
            $0.isUserInteractionEnabled = true
        }
        
    }
    @objc private func didPan(_ sender: UIPanGestureRecognizer) {
         let imgView : UIImageView = (sender.view as! UIImageView)
        switch sender.state {
        case .began:
            initialCenter = imgView.center
        case .changed:
            let translation = sender.translation(in: view)
            
            imgView.center = CGPoint(x: initialCenter.x + translation.x,
                                          y: initialCenter.y + translation.y)
            
        default:
            break
        }
    }
    
}
