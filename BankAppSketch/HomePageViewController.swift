//
//  HomePageViewController.swift
//  BankAppSketch
//
//  Created by Дмитрий Гусев on 07.04.2023.
//

import UIKit

class HomePageViewController: UIViewController{

//    var scrollView = UIScrollView()
//    let contentView = UIView()
//    let viewTopBlue = UIView()
//    
//    let imageOne = UIImageView(image: UIImage(named: "Chart card"))
//    let imageTransfer = UIImageView(image: UIImage(named: "TransferButton"))
//    let imageMyCard = UIImageView(image: UIImage(named: "MyCardButton"))
//    let imageInsight = UIImageView(image: UIImage(named: "InsightButton"))
//    let imageVerify = UIImageView(image: UIImage(named: "Chart Card ( Horizontal )"))
//       
    
//    private lazy var scrollView: UIScrollView = {
//        let scrollView = UIScrollView()
//        scrollView.backgroundColor = .white
//        scrollView.frame = self.view.bounds
//        scrollView.contentSize = contentSize
//        return scrollView
//    }()
//
//    private lazy var contentView: UIView = {
//        let contentView = UIView()
//        contentView.backgroundColor = .white
//        contentView.frame.size = contentSize
//        return contentView
//    }()
//
//    private let stackView: UIStackView = {
//        let stackView = UIStackView()
//        stackView.axis = .vertical
//        stackView.alignment = .center
//        stackView.spacing = 20
//        return stackView
//    }()
//    private var contentSize: CGSize {
//        CGSize(width: view.frame.width, height: view.frame.height + 400)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        view.addSubview(scrollView)
//        scrollView.addSubview(contentView)
//
//
//        scrollView.backgroundColor = .darkSkyBlue
//        contentView.backgroundColor = .white
//        scrollView.showsVerticalScrollIndicator = false
//
//
//        // Setup ScrollView
//
//
//        scrollView.translatesAutoresizingMaskIntoConstraints = false
//        contentView.translatesAutoresizingMaskIntoConstraints = false
//        contentView.isUserInteractionEnabled = false
//        view.addSubview(scrollView)
//        scrollView.addSubview(contentView)
////        scrollView.isExclusiveTouch = false
////        scrollView.delaysContentTouches = true
////        scrollView.canCancelContentTouches = true
//
//
////        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
//        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
//        contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
//        contentView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
//        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
//        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
//        contentView.heightAnchor.constraint(equalToConstant: 2000).isActive = true
//
//
////        setup viewTopBlue
////        contentView.addSubview(viewTopBlue)
////        viewTopBlue.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
////        viewTopBlue.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
////        viewTopBlue.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
////        viewTopBlue.heightAnchor.constraint(equalToConstant: 280).isActive = true
////        viewTopBlue.translatesAutoresizingMaskIntoConstraints = false
////        viewTopBlue.backgroundColor = .darkSkyBlue
//        let tap = UITapGestureRecognizer()
//        tap.addTarget(self, action: #selector(homePage))
//
//
//        //Setup Views
//        // ONE
////        contentView.addSubview(createUIViewConteinerAndShadow(image: imageOne))
////     imageOne.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
////     imageOne.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 140).isActive = true
//////     imageOne.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
////        imageOne.heightAnchor.constraint(equalToConstant: imageOne.bounds.height).isActive = true
////     imageOne.translatesAutoresizingMaskIntoConstraints = false
//
//        // 3 Button
//
//
////        scrollView.isScrollEnabled = false
//        let imageMyCardLayer = createUIViewConteinerAndShadow(image: imageMyCard)
////        imageMyCardLayer.isExclusiveTouch = false
////        let viewTest = UIView()
//        //        view.addSubview(viewTest)
//        let but = UIButton()
//        but.setImage(UIImage(named: "MyCardButton"), for: .normal)
//        but.addTarget(self, action: #selector(homePage), for:.touchUpInside)
//        let viewLayer = UIView()
////        contentView.addSubview(viewLayer)
////        contentView.layer.masksToBounds = false
//
//        but.layer.shadowOffset = CGSize(width: 0, height: 3)
//        but.layer.shadowRadius = 3
//        but.layer.shadowOpacity = 0.1
//        but.layer.shadowColor = UIColor.black.cgColor
////        but.layer.masksToBounds = false
////        but.clipsToBounds = true
////        viewLayer.isExclusiveTouch = false
////        viewLayer.addSubview(but)
//
//        but.layer.cornerRadius = 10
//        viewLayer.addGestureRecognizer(tap)
//        contentView.addSubview(but)
//
////        imageMyCardLayer.isUserInteractionEnabled = true
//        but.heightAnchor.constraint(equalToConstant: 114).isActive = true
//        but.widthAnchor.constraint(equalToConstant: 107).isActive = true
//        but.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
//        but.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 240).isActive = true
//        but.translatesAutoresizingMaskIntoConstraints = false
//
//
//
        //recognizer
        
//        imageMyCard.addGestureRecognizer(tap)
//        imageMyCardLayer.addGestureRecognizer(tap)
////        viewTest.addGestureRecognizer(tap)
//        contentView.addSubview(createUIViewConteinerAndShadow(image: imageTransfer))
//        imageTransfer.heightAnchor.constraint(equalToConstant: 114).isActive = true
//        imageTransfer.widthAnchor.constraint(equalToConstant: 107).isActive = true
//        imageTransfer.trailingAnchor.constraint(equalTo: but.leadingAnchor,constant: -8).isActive = true
//        imageTransfer.topAnchor.constraint(equalTo: imageOne.bottomAnchor, constant: 40).isActive = true
//        imageTransfer.translatesAutoresizingMaskIntoConstraints = false
//        imageTransfer.addGestureRecognizer(tap)
//        contentView.addGestureRecognizer(tap)

        
//        contentView.addSubview(createUIViewConteinerAndShadow(image: imageInsight))
//
//        imageInsight.addGestureRecognizer(tap)
//        imageInsight.heightAnchor.constraint(equalToConstant: 114).isActive = true
//        imageInsight.widthAnchor.constraint(equalToConstant: 107).isActive = true
//        imageInsight.leadingAnchor.constraint(equalTo: but.trailingAnchor, constant: 8).isActive = true
//        imageInsight.topAnchor.constraint(equalTo: imageOne.bottomAnchor, constant: 40).isActive = true
//        imageInsight.translatesAutoresizingMaskIntoConstraints = false
//

        // Verify Image
//
//        contentView.addSubview(createUIViewConteinerAndShadow(image: imageVerify))
//        imageVerify.addGestureRecognizer(tap)
//
//        imageVerify.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
//        imageVerify.topAnchor.constraint(equalTo: imageTransfer.bottomAnchor, constant: 40).isActive = true
////        imageVerify.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -50).isActive = true
//        imageVerify.translatesAutoresizingMaskIntoConstraints = false
        
    }


//
//    @objc func homePage() {
//        let vc = HomePageViewController()
//        vc.view.backgroundColor = .white
//        vc.modalPresentationStyle = .fullScreen
//        present(vc, animated: true)
//    }
//    


}
