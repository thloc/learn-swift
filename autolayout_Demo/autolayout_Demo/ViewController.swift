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
        let imageView = UIImageView(image: UIImage(named: "img1"))
        imageView.translatesAutoresizingMaskIntoConstraints = false

        return imageView
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Join us today in our fun and games!"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // view.backgroundColor = .yellow
        view.addSubview(planetImageView)
        view.addSubview(descriptionTextView)

        setupLayout()
    }
    
    private func setupLayout() {
        planetImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        // planetImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        planetImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        planetImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        planetImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: planetImageView.bottomAnchor, constant: 150).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}
