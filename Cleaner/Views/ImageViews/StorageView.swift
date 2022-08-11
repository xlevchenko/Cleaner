//
//  StorageView.swift
//  Cleaner
//
//  Created by Olexsii Levchenko on 8/11/22.
//

import UIKit

class StorageView: UIImageView {
    
    let sectionImage = UIImageView(image: UIImage(named: "SecretStorage"))
    let sectionLabel = TitleLabel(text: "Duplicates photos", textAlignment: .center, fontSize: 13)

    
    init(frame: CGRect, image: UIImage, sectionText: String) {
        self.sectionImage.image = image
        self.sectionLabel.text = sectionText
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        image = UIImage(named: "WhiteEllipse")
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 4)
        layer.shadowRadius = 4
        layer.shadowOpacity = 1.0
        translatesAutoresizingMaskIntoConstraints = false
        constrainHeight(constant: 111)
        constrainWidth(constant: 111)
        
        sectionImage.translatesAutoresizingMaskIntoConstraints = false
        sectionImage.constrainWidth(constant: 42)
        sectionImage.constrainHeight(constant: 42)
        
        sectionLabel.textColor = UIColor(red: 0.29, green: 0.31, blue: 0.67, alpha: 1.00)
        sectionLabel.font = .systemFont(ofSize: 13)
        sectionLabel.numberOfLines = 0
        
        setupConstraints()
    }
    
    
    func setupConstraints() {
        let overallStack = UIStackView(arrangedSubviews: [sectionImage, sectionLabel])
        overallStack.axis = .vertical
        overallStack.alignment = .center
        
        addSubview(overallStack)
        overallStack.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 15, left: 10, bottom: 30, right: 10))
    }
}
