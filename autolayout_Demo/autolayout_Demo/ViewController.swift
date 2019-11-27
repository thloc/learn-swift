//
//  ViewController.swift
//  autolayout_Demo
//
//  Created by Administrator on 11/25/19.
//  Copyright © 2019 Administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let planetImageView: UIImageView = {
        var image: UIImage = UIImage(named: "img1")!
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        
        let attributedText = NSMutableAttributedString( string: "Join us today in our fun and games!", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
        
        attributedText.append(NSAttributedString(string: "\n\nAre you ready for loads and loads of fun? Don't wait any longger! We hope to see you in our stores soon", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.gray]))
        
        textView.attributedText = attributedText
        
//        textView.text = "Join us today in our fun and games!"
//        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // view.backgroundColor = .yellow
        // view.addSubview(planetImageView)
        view.addSubview(descriptionTextView)

        setupLayout()
    }
    
    private func setupLayout() {
        let topImageContainerView = UIView()
//        topImageContainerView.backgroundColor = .blue
//        topImageContainerView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        view.addSubview(topImageContainerView)
        // enable auto layout
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
        topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        topImageContainerView.addSubview(planetImageView)

        planetImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        planetImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        planetImageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.5).isActive = true
        
//        topImageContainerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        topImageContainerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
//        planetImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        // planetImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        planetImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
//        planetImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
//        planetImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}
