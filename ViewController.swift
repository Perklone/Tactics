//
//  ViewController.swift
//  LearnTactics
//
//  Created by Rizky Maulana on 20/04/22.
//

import UIKit

class ViewController: UIPageViewController {
    
    var pages = [UIViewController]()
    let pageSlides = UIPageControl()
    let index = 0
    let nextButton = UIButton()
    let prevButton = UIButton()
    
    override init(transitionStyle style: UIPageViewController.TransitionStyle, navigationOrientation: UIPageViewController.NavigationOrientation, options: [UIPageViewController.OptionsKey : Any]? = nil) {
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 247/255, green: 248/255, blue: 241/255, alpha: 1)
        setupPageView()
        setupAccessories()
        self.navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    

}

extension ViewController {
    func setupPageView(){
        dataSource = self
        delegate = self
        
        let halaman1 = introViewController(imageName: "undrawJunior2", titleText: "Tactics", subText: "What's so special about it?")
        let halaman2 = intro2ViewController(imageName: "TacticOverview",
                                            titleText: """
It's a must learn for
football fans!
""")
        let halaman3 = intro3ViewController(textImage: "pitch", textLabel: "Try it out for yourself!",subTextLabel: """
            Drag the yellow pieces
            to modify this formation!
""")
        let halaman4 = introEndViewController(textLabel: "Good Job!", textButton: "Now, let's learn about basic football formations!")
        let halaman5 = FourFourTwo()
        let halaman6 = FourTwoThreeOne()
        let halaman7 = ThreeFiveTwo()
        let halaman8 = Continuation()
        let halaman9 = Final(textImage: "pitch", textLabel: "", subTextLabel: "You can check previous page to revisit!")
        pages.append(halaman1)
        pages.append(halaman2)
        pages.append(halaman3)
        pages.append(halaman4)
        pages.append(halaman5)
        pages.append(halaman6)
        pages.append(halaman7)
        pages.append(halaman8)
        pages.append(halaman9)
        setViewControllers([pages[index]], direction: .forward, animated: false, completion: nil)
        
//        pageSlides.addTarget(self, action: #selector(<#T##@objc method#>), for: .valueChanged)
    }
    func setupAccessories(){
        pageSlides.translatesAutoresizingMaskIntoConstraints = false
        pageSlides.currentPageIndicatorTintColor = .black
        pageSlides.pageIndicatorTintColor = .systemGray2
        pageSlides.numberOfPages = pages.count
        pageSlides.currentPage = index
        view.addSubview(pageSlides)
        pageSlides.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pageSlides.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
    }
}



//MARK : - UIPageViewDataSource & UIPageViewDelegates

extension ViewController: UIPageViewControllerDelegate, UIPageViewControllerDataSource{
    //Data Source
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = pages.firstIndex(of: viewController) else { return nil }
        
        if index == 0 {
            return pages.last
        } else {
            return pages[index - 1]
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = pages.firstIndex(of: viewController) else { return nil }

        if index < pages.count - 1 {
            return pages[index + 1]
        }
        else {
            return pages.first
        }
    }
    
    //Delegates
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
            
            guard let viewControllers = pageViewController.viewControllers else { return }
            guard let currentIndex = pages.firstIndex(of: viewControllers[0]) else { return }
            
            pageSlides.currentPage = currentIndex
            
        }
    
}

extension ViewController {
//    @objc func pageControlTapped(_ sender: UIPageControl) {
//            setViewControllers([pages[sender.currentPage]], direction: .forward, animated: true, completion: nil)
//
//        }
//    @objc func nextTapped(_ sender: UIButton) {
//           pageSlides.currentPage += 1
//
//
//       }

}
