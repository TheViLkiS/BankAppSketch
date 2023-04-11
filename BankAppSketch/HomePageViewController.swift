//
//  HomePageViewController.swift
//  BankAppSketch
//
//  Created by Дмитрий Гусев on 07.04.2023.
//

import UIKit

class HomePageViewController: UIViewController, UIGestureRecognizerDelegate, UIScrollViewDelegate {

    var scrollView = UIScrollView()
    let contentView = UIView()
    let viewTopBlue = UIView()
    
    let imageOne = UIImageView(image: UIImage(named: "Chart card"))
    let imageTransfer = UIImageView(image: UIImage(named: "TransferButton"))
    let imageMyCard = UIImageView(image: UIImage(named: "MyCardButton"))
    let imageInsight = UIImageView(image: UIImage(named: "InsightButton"))
    let imageVerify = UIImageView(image: UIImage(named: "Chart Card ( Horizontal )"))
       

    
    override func viewDidLoad() {
        super.viewDidLoad()


        scrollView.backgroundColor = .darkSkyBlue
        contentView.backgroundColor = .white
        scrollView.showsVerticalScrollIndicator = false
        scrollView.delegate = self
        func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
            return true
        }
        
        // Setup ScrollView
         
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.isUserInteractionEnabled = false
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
//        scrollView.isExclusiveTouch = false
        scrollView.delaysContentTouches = false
        scrollView.canCancelContentTouches = false
        
//        scrollView.isUserInteractionEnabled = false
        
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
       
        
        //setup viewTopBlue
        contentView.addSubview(viewTopBlue)
        viewTopBlue.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        viewTopBlue.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
        viewTopBlue.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        viewTopBlue.heightAnchor.constraint(equalToConstant: 280).isActive = true
        viewTopBlue.translatesAutoresizingMaskIntoConstraints = false
        viewTopBlue.backgroundColor = .darkSkyBlue

        
        
        //Setup Views
        // ONE
        contentView.addSubview(createUIViewConteinerAndShadow(image: imageOne))
     imageOne.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
     imageOne.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 140).isActive = true
//     imageOne.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
     imageOne.translatesAutoresizingMaskIntoConstraints = false

        // 3 Button
        
        
        
        let imageMyCardLayer = createUIViewConteinerAndShadow(image: imageMyCard)
//        imageMyCardLayer.isExclusiveTouch = false
        view.addSubview(imageMyCard)
        imageMyCard.isUserInteractionEnabled = true
        imageMyCard.heightAnchor.constraint(equalToConstant: 114).isActive = true
        imageMyCard.widthAnchor.constraint(equalToConstant: 107).isActive = true
        imageMyCard.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        imageMyCard.topAnchor.constraint(equalTo: imageOne.bottomAnchor, constant: 40).isActive = true
        imageMyCard.translatesAutoresizingMaskIntoConstraints = false

        
        
        //recognizer
        let tap = UITapGestureRecognizer()
        tap.delegate = self
        tap.addTarget(self, action: #selector(homePage))
        imageMyCard.addGestureRecognizer(tap)
        imageMyCardLayer.addGestureRecognizer(tap)
        
        contentView.addSubview(createUIViewConteinerAndShadow(image: imageTransfer))
        imageTransfer.heightAnchor.constraint(equalToConstant: 114).isActive = true
        imageTransfer.widthAnchor.constraint(equalToConstant: 107).isActive = true
        imageTransfer.trailingAnchor.constraint(equalTo: imageMyCard.leadingAnchor,constant: -8).isActive = true
        imageTransfer.topAnchor.constraint(equalTo: imageOne.bottomAnchor, constant: 40).isActive = true
        imageTransfer.translatesAutoresizingMaskIntoConstraints = false
        imageTransfer.addGestureRecognizer(tap)
        contentView.addGestureRecognizer(tap)

        
        contentView.addSubview(createUIViewConteinerAndShadow(image: imageInsight))

        imageInsight.heightAnchor.constraint(equalToConstant: 114).isActive = true
        imageInsight.widthAnchor.constraint(equalToConstant: 107).isActive = true
        imageInsight.leadingAnchor.constraint(equalTo: imageMyCard.trailingAnchor, constant: 8).isActive = true
        imageInsight.topAnchor.constraint(equalTo: imageOne.bottomAnchor, constant: 40).isActive = true
        imageInsight.translatesAutoresizingMaskIntoConstraints = false
                

        // Verify Image
        
        contentView.addSubview(createUIViewConteinerAndShadow(image: imageVerify))
        
        imageVerify.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        imageVerify.topAnchor.constraint(equalTo: imageTransfer.bottomAnchor, constant: 40).isActive = true
        imageVerify.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -50).isActive = true
        imageVerify.translatesAutoresizingMaskIntoConstraints = false
        
    }


    
    @objc func homePage() {
        let vc = HomePageViewController()
        vc.view.backgroundColor = .white
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }

}
