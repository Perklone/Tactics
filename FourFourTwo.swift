//
//  File.swift
//  LearnTactics
//
//  Created by Rizky Maulana on 24/04/22.
//

import UIKit

class FourFourTwo: UIViewController {
    let pitchImage : UIImageView = {
        let x = UIImageView()
        x.image = UIImage(named: "pitch")
        x.contentMode = .scaleAspectFit
        x.translatesAutoresizingMaskIntoConstraints = false
        return x
    }()
    let formationTitle: UILabel = {
        let x = UILabel()
        x.text = "4-4-2"
        x.font = UIFont.systemFont(ofSize: 54, weight: .bold)
        x.translatesAutoresizingMaskIntoConstraints = false
        return x
    }()
    let formationDesc: UILabel = {
        let x = UILabel()
        x.text = """
One of the most infamous tactics in the modern history of football, The 4-4-2 is a simple to execute yet structurally sound formation to use for team with attacking mindset.

The formation symmetrical shape gives a nice compactness to the structure that can be used during attacking or defending.   Also, by having two strikers spearheading the attacking transition, this formation can be deadly in counter-attacking!  
"""
        x.textAlignment = .justified
        x.lineBreakMode = .byWordWrapping
        x.numberOfLines = 0
        x.widthAnchor.constraint(equalToConstant: 725).isActive = true
        x.heightAnchor.constraint(equalToConstant: 600).isActive = true
        x.font = UIFont.systemFont(ofSize: 36, weight: .medium)
        x.translatesAutoresizingMaskIntoConstraints = false
        return x
    }()
    let notableLabel: UILabel = {
        let x = UILabel()
        x.text = "Notable Team"
        x.font = UIFont.systemFont(ofSize: 48, weight: .bold)
        x.translatesAutoresizingMaskIntoConstraints = false
        return x
    }()
    let teamLabel: UILabel = {
        let x = UILabel()
        x.text = "2007/2008 Manchester United"
        x.font = UIFont.systemFont(ofSize: 36, weight: .semibold)
        x.translatesAutoresizingMaskIntoConstraints = false
        return x
    }()
    func createPieces() -> UIImageView {
        let x = UIImageView()
        x.image = UIImage(named: "piecest")
        x.heightAnchor.constraint(equalToConstant: 100).isActive = true
        x.widthAnchor.constraint(equalToConstant: 100).isActive = true
        x.translatesAutoresizingMaskIntoConstraints = false
        
        return x
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupIntro()
    }
}
extension FourFourTwo {
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
        view.addSubview(formationTitle)
        view.addSubview(formationDesc)
        view.addSubview(notableLabel)
        view.addSubview(teamLabel)
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
//        pitchImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        pitchImage.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -0).isActive = true
        pitchImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        
        formationTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor,constant: -25).isActive = true
        formationTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 75).isActive = true
        formationDesc.topAnchor.constraint(equalTo: formationTitle.bottomAnchor, constant: 10).isActive = true
        formationDesc.centerXAnchor.constraint(equalTo: view.centerXAnchor,constant: 265).isActive = true
        notableLabel.topAnchor.constraint(equalTo: formationDesc.bottomAnchor, constant: 25).isActive = true
        notableLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor,constant: 265).isActive = true
        teamLabel.topAnchor.constraint(equalTo: notableLabel.bottomAnchor, constant: 10).isActive = true
        teamLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor,constant: 265).isActive = true
        
        
        p1.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 250).isActive = true
        p1.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -80).isActive = true
        
        p2.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 50).isActive = true
        p2.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -250).isActive = true
        p3.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 175).isActive = true
        p3.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -250).isActive = true
        p4.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 325).isActive = true
        p4.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -250).isActive = true
        p5.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 460).isActive = true
        p5.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -250).isActive = true
        p6.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 175).isActive = true
        p6.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -460).isActive = true
        p7.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 325).isActive = true
        p7.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -460).isActive = true
        p8.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 50).isActive = true
        p8.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -460).isActive = true
        p9.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 460).isActive = true
        p9.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -460).isActive = true
        p10.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 180).isActive = true
        p10.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -750).isActive = true
        p11.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 325).isActive = true
        p11.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -750).isActive = true
        
//        [p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11].forEach {
//            let panRecog = UIPanGestureRecognizer(target: self, action: #selector(self.didPan(_:)))
//            $0.addGestureRecognizer(panRecog)
//            $0.isUserInteractionEnabled = true
//        }
        
    }
}
