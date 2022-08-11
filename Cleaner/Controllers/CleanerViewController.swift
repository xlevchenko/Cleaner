//
//  CleanerViewController.swift
//  Cleaner
//
//  Created by Olexsii Levchenko on 8/10/22.
//

import UIKit

class CleanerViewController: UIViewController {
    
    let rightBarButtonItem = RightBarButtonItem()
    let storageImageView = StorageInfoView(frame: .zero)
    
    let duplicateView1 = DuplicatesView(frame: .zero, image: UIImage(named: "DuplicatesPhotos")!, sectionText: "Duplicates photos", countFiels: "120 files", duplicates: "20 duplicate ")
    let duplicateView2 = DuplicatesView(frame: .zero, image: UIImage(named: "DuplicateScreenshots")!, sectionText: "Duplicate screenshots", countFiels: "12 files", duplicates: "2 duplicate")
    let duplicateView3 = DuplicatesView(frame: .zero, image: UIImage(named: "DuplicateContacts")!, sectionText: "Duplicate contacts", countFiels: "30 contacts", duplicates: "7 duplicate")
    
    let storegeView1 = StorageView(frame: .zero, image: UIImage(named: "SecretStorage")!, sectionText: "SECRET STORAGE")
    let storegeView2 = StorageView(frame: .zero, image: UIImage(named: "AllPhotos")!, sectionText: "ALL PHOTOS")
    let storegeView3 = StorageView(frame: .zero, image: UIImage(named: "AllVideos")!, sectionText: "ALL VIDEOS")
    
    let conatinerView = UIView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightBarButtonItem)

        configureBackground()
        setupConstraints()
    }

    
    //MARK: - Configure View Controller
    func configureBackground() {
        let layerGradient = CAGradientLayer()
        layerGradient.colors = [
          UIColor(red: 0.451, green: 0.459, blue: 0.847, alpha: 1).cgColor,
          UIColor(red: 0.396, green: 0.42, blue: 0.733, alpha: 1).cgColor,
          UIColor(red: 0.286, green: 0.306, blue: 0.667, alpha: 1).cgColor
        ]

        layerGradient.locations = [0, 0.38, 1]
        layerGradient.startPoint = CGPoint(x: 0.25, y: 0.5)
        layerGradient.endPoint = CGPoint(x: 0.75, y: 0.5)
        layerGradient.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 0.44, b: 1, c: -1, d: 0.14, tx: 0.77, ty: -0.07))
        layerGradient.bounds = view.bounds.insetBy(dx: -0.6 * view.bounds.size.width, dy: -0.6 * view.bounds.size.height)
        
        layerGradient.position = view.center
        view.layer.addSublayer(layerGradient)
        
        let bubblesView = UIImageView(image: UIImage(named: "BubblesBackground"))
        view.addSubview(bubblesView)
        bubblesView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bubblesView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bubblesView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bubblesView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    
    //MARK: - Setup Constraints
    func setupConstraints() {
        
        view.addSubviews(conatinerView, duplicateView1, duplicateView2, duplicateView3, storegeView1, storegeView2, storegeView3)
        conatinerView.addSubview(storageImageView)
        conatinerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            conatinerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            conatinerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            conatinerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            storageImageView.centerXAnchor.constraint(equalTo: conatinerView.centerXAnchor),
            storageImageView.centerYAnchor.constraint(equalTo: conatinerView.centerYAnchor),

            duplicateView2.topAnchor.constraint(equalTo: conatinerView.bottomAnchor, constant: 40),
            duplicateView2.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            duplicateView1.topAnchor.constraint(equalTo: duplicateView2.bottomAnchor, constant: -50),
            duplicateView1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),

            duplicateView3.topAnchor.constraint(equalTo: duplicateView2.bottomAnchor, constant: -50),
            duplicateView3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            storegeView1.topAnchor.constraint(equalTo: duplicateView2.bottomAnchor, constant: 40),
            storegeView1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            storegeView2.topAnchor.constraint(equalTo: storegeView1.bottomAnchor, constant: -50),
            storegeView2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            storegeView2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            
            storegeView3.topAnchor.constraint(equalTo: storegeView1.bottomAnchor, constant: -50),
            storegeView3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            storegeView3.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50)
        ])
    }
}

