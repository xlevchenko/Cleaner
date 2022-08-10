//
//  CleanerViewController.swift
//  Cleaner
//
//  Created by Olexsii Levchenko on 8/10/22.
//

import UIKit

class CleanerViewController: UIViewController {
    
    let rightBarButtonItem = RightBarButtonItem()
    let storageImageView = StorageImageView(frame: .zero)
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightBarButtonItem)
        
        configureBackground()
        setupStorageImageView()
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
        
        let bubblesView = UIImageView(image: UIImage(named: "backgroundBubbles"))
        view.addSubview(bubblesView)
        bubblesView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bubblesView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bubblesView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bubblesView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    
    //MARK: - Setup Storage ImageView
    func setupStorageImageView() {
        view.addSubview(storageImageView)
        
        NSLayoutConstraint.activate([
            storageImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            storageImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}

