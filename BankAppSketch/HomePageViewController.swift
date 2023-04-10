//
//  HomePageViewController.swift
//  BankAppSketch
//
//  Created by Дмитрий Гусев on 07.04.2023.
//

import UIKit

class HomePageViewController: UIViewController {

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
        
        
        // Setup ScrollView
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
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
        contentView.addSubview(imageOne)
     imageOne.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
     imageOne.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 140).isActive = true
//     imageOne.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
     imageOne.translatesAutoresizingMaskIntoConstraints = false
        imageOne.layer.cornerRadius = 15
        imageOne.layer.cornerRadius = 15
        imageOne.layer.shadowOffset = CGSize(width: 0, height: 3)
        imageOne.layer.shadowRadius = 3
        imageOne.layer.shadowOpacity = 0.1
        imageOne.layer.shadowColor = UIColor.black.cgColor
        // 3 Button
        
        
        contentView.addSubview(imageMyCard)
        imageMyCard.layer.cornerRadius = 15
        imageMyCard.layer.shadowOffset = CGSize(width: 0, height: 3)
        imageMyCard.layer.shadowRadius = 3
        imageMyCard.layer.shadowOpacity = 0.1
        imageMyCard.layer.shadowColor = UIColor.black.cgColor
        imageMyCard.heightAnchor.constraint(equalToConstant: 114).isActive = true
        imageMyCard.widthAnchor.constraint(equalToConstant: 107).isActive = true
        imageMyCard.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        imageMyCard.topAnchor.constraint(equalTo: imageOne.bottomAnchor, constant: 40).isActive = true
        imageMyCard.translatesAutoresizingMaskIntoConstraints = false
        
        
        contentView.addSubview(imageTransfer)
        imageTransfer.layer.cornerRadius = 15
        imageTransfer.layer.cornerRadius = 15
        imageTransfer.layer.shadowOffset = CGSize(width: 0, height: 3)
        imageTransfer.layer.shadowRadius = 3
        imageTransfer.layer.shadowOpacity = 0.1
        imageTransfer.layer.shadowColor = UIColor.black.cgColor
        imageTransfer.heightAnchor.constraint(equalToConstant: 114).isActive = true
        imageTransfer.widthAnchor.constraint(equalToConstant: 107).isActive = true
        imageTransfer.trailingAnchor.constraint(equalTo: imageMyCard.leadingAnchor,constant: -8).isActive = true
        imageTransfer.topAnchor.constraint(equalTo: imageOne.bottomAnchor, constant: 40).isActive = true
        imageTransfer.translatesAutoresizingMaskIntoConstraints = false
        

        
        contentView.addSubview(imageInsight)
        imageInsight.layer.shadowOffset = CGSize(width: 0, height: 3)
        imageInsight.layer.shadowRadius = 3
        imageInsight.layer.shadowOpacity = 0.1
        imageInsight.layer.shadowColor = UIColor.black.cgColor
        imageInsight.heightAnchor.constraint(equalToConstant: 114).isActive = true
        imageInsight.widthAnchor.constraint(equalToConstant: 107).isActive = true
        imageInsight.leadingAnchor.constraint(equalTo: imageMyCard.trailingAnchor, constant: 8).isActive = true
        imageInsight.topAnchor.constraint(equalTo: imageOne.bottomAnchor, constant: 40).isActive = true
        imageInsight.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        
        
        
        

        // Verify Image
        
//        var imageVerifyTmp = UIView()
//        imageVerifyTmp.addSubview(imageVerify)
//        imageVerifyTmp.layer.shadowOffset = CGSize(width: 0, height: 3)
//        imageVerifyTmp.layer.shadowRadius = 3
//        imageVerifyTmp.layer.shadowOpacity = 0.1
//        imageVerifyTmp.layer.shadowColor = UIColor.black.cgColor
//        contentView.addSubview(imageVerifyTmp)
//
//        imageVerify.layer.cornerRadius = 10
//        imageVerify.clipsToBounds = true
        contentView.addSubview(createUIViewConteinerAndShadow(image: imageVerify))
        
        imageVerify.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        imageVerify.topAnchor.constraint(equalTo: imageTransfer.bottomAnchor, constant: 40).isActive = true
        imageVerify.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -50).isActive = true
        imageVerify.translatesAutoresizingMaskIntoConstraints = false
        
    }



}
