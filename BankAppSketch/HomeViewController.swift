//
//  HomeViewController.swift
//  BankAppSketch
//
//  Created by Дмитрий Гусев on 12.04.2023.
//

import UIKit

class HomeViewController: UIViewController {
    let image = UIImageView(image: UIImage(named: "Chart card"))
    let imageOne = UIImageView(image: UIImage(named: "Chart card"))
    let imageTransfer = UIImageView(image: UIImage(named: "TransferButton"))
    let imageMyCard = UIImageView(image: UIImage(named: "MyCardButton"))
    let imageInsight = UIImageView(image: UIImage(named: "InsightButton"))
    let imageVerify = UIImageView(image: UIImage(named: "Chart Card ( Horizontal )"))
    let imageCharacter = UIImageView(image: UIImage(named: "Character Card"))

    private let scrollView: UIScrollView = {
    let view = UIScrollView()
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
    }()
    private let scrollStackViewContainer: UIStackView = {
    let view = UIStackView()
    view.axis = .vertical
    view.spacing = 0
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
    }()

    private let subView0: UIView = {
    let view = UIView()
    view.heightAnchor.constraint(equalToConstant: 700).isActive = true
    view.backgroundColor = UIColor.darkSkyBlue
    return view
    }()
    private let subView1: UIView = {
    let view = UIView()

    view.backgroundColor = .white
    return view
    }()
    private let subView2: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor.white
    return view
    }()
    private var subView3: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor.white
    return view
    }()
    private let subView4: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor.white
    return view
    }()
    private let subView5: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor.white
    return view
    }()
    private let subViewBackground: UIView = {
    let view = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 240))
    
    view.backgroundColor = UIColor.darkSkyBlue
    return view
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(subViewBackground)
        setupScrollView()
        view.backgroundColor = .white

        

        createButtonHomeScreen(image: imageOne, onView: subView1, width: 340, height: 212, y: (subView1.bounds.height - imageOne.bounds.height) / 2, x: (view.bounds.width - imageOne.bounds.width) / 2, spacing: -50)

        createButtonHomeScreen(image: imageMyCard, onView: subView2, width: 107, height: 114, y: 0, x: (view.bounds.width - imageMyCard.bounds.width) / 2)
        createButtonHomeScreen(image: imageTransfer, onView: subView2, width: 107, height: 114, y: 0, x: (view.bounds.width - imageTransfer.bounds.width) / 2 - imageTransfer.bounds.width - 20)
        createButtonHomeScreen(image: imageInsight, onView: subView2, width: 107, height: 114, y: 0, x: (view.bounds.width - imageInsight.bounds.width) / 2 + imageInsight.bounds.width + 20)
        createButtonHomeScreen(image: imageVerify, onView: subView3, width: 340, height: 408, y: 0, x: (view.bounds.width - imageVerify.bounds.width) / 2)
        createButtonHomeScreen(image: imageCharacter, onView: subView4, width: 340, height: 322, y: 0, x: (view.bounds.width - imageCharacter.bounds.width) / 2)
        
        
    }
    
    
    private func setupScrollView() {
    let margins = view.layoutMarginsGuide
    view.addSubview(scrollView)
    scrollView.addSubview(scrollStackViewContainer)
    scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    scrollView.topAnchor.constraint(equalTo: margins.topAnchor).isActive = true
    scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    scrollView.showsVerticalScrollIndicator = false
    scrollStackViewContainer.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
    scrollStackViewContainer.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
    scrollStackViewContainer.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 200).isActive = true
    scrollStackViewContainer.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
    scrollStackViewContainer.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        
    configureContainerView()
    }
    private func configureContainerView() {
//    scrollStackViewContainer.addArrangedSubview(subView0)
    scrollStackViewContainer.addArrangedSubview(subView1)
    scrollStackViewContainer.addArrangedSubview(subView2)

    scrollStackViewContainer.addArrangedSubview(subView3)
    scrollStackViewContainer.addArrangedSubview(subView4)

    }

    @objc func homePage() {
        let vc = HomeViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
//    func shadow (obj: AnyObject, onView: UIView) {
//
//        let viewShadow = UIView(frame: CGRect(x: (view.bounds.width - obj.bounds.width) / 2, y: (onView.bounds.height - obj.bounds.height) / 2, width: obj.bounds.width, height: obj.bounds.height))
//        viewShadow.backgroundColor = .white
//        viewShadow.layer.shadowOffset = CGSize(width: 0, height: 6)
//        viewShadow.layer.shadowRadius = 6
//        viewShadow.layer.shadowOpacity = 0.2
//        viewShadow.layer.shadowColor = UIColor.black.cgColor
//        viewShadow.layer.cornerRadius = 10
//
//        onView.addSubview(viewShadow)
//    }
    
    func createButtonHomeScreen(image: UIImageView, onView: UIView, width: CGFloat, height: CGFloat, y: CGFloat, x: CGFloat, spacing: CGFloat = 60){
        
        let button = UIButton(frame: CGRect(x: x, y: y , width: width, height: height))
        button.addTarget(self, action: #selector(homePage), for: .touchUpInside)
        button.setImage(image.image, for: .normal)
        button.setImage(image.image, for: .highlighted)

        button.layer.cornerRadius = 10
        button.clipsToBounds = true


        
        let viewShadow = UIView(frame: CGRect(x: x, y: y, width: width, height: height))
        viewShadow.backgroundColor = .white
        viewShadow.layer.shadowOffset = CGSize(width: 0, height: 6)
        viewShadow.layer.shadowRadius = 6
        viewShadow.layer.shadowOpacity = 0.2
        viewShadow.layer.shadowColor = UIColor.black.cgColor
        viewShadow.layer.cornerRadius = 10
        
        
        onView.addSubview(viewShadow)
        onView.heightAnchor.constraint(equalToConstant: image.bounds.height + spacing).isActive = true
        onView.addSubview(button)
    }
    
    
    

}
