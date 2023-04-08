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
    let imageTwo = UIImageView(image: UIImage(named: "Card with icons and text"))
    let imageThree = UIImageView(image: UIImage(named: "Chart Card ( Horizontal )"))
       

    
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
        viewTopBlue.heightAnchor.constraint(equalToConstant: 350).isActive = true
        viewTopBlue.translatesAutoresizingMaskIntoConstraints = false
        viewTopBlue.backgroundColor = .darkSkyBlue

        
        
        //Setup Views
        
        contentView.addSubview(imageOne)
     imageOne.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
     imageOne.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 200).isActive = true
//     imageOne.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
     imageOne.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(imageTwo)
     imageTwo.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
     imageTwo.topAnchor.constraint(equalTo: imageOne.bottomAnchor, constant: 200).isActive = true
//     imageTwo.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
//     imageTwo.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
     imageTwo.translatesAutoresizingMaskIntoConstraints = false

        
        contentView.addSubview(imageThree)
        imageThree.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        imageThree.topAnchor.constraint(equalTo: imageTwo.bottomAnchor, constant: 100).isActive = true
//        imageThree.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
        imageThree.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        imageThree.translatesAutoresizingMaskIntoConstraints = false
        
    }



}
