//
//  DuplicatesView.swift
//  Cleaner
//
//  Created by Olexsii Levchenko on 8/10/22.
//

import UIKit

class DuplicatesView: UIImageView {
    
    let indicatorButton = UIButton(frame: .zero)
    let purpureImageView = UIImageView(image: UIImage(named: "PurpureEllipse"))
    var photoImage = UIImageView(image: UIImage(named: "DuplicatesPhotos"))
    let sectionLabel = TitleLabel(text: "Duplicates photos", textAlignment: .center, fontSize: 12)
    let countFiels = TitleLabel(text: "120 files", textAlignment: .center, fontSize: 15)
    let countDuplicates = SecondaryTitleLable(text: "20 duplicate ", fontSize: 8)
    

    init(frame: CGRect, image: UIImage, sectionText: String, countFiels: String, duplicates: String) {
        self.photoImage.image = image
        self.sectionLabel.text = sectionText
        self.countFiels.text = countFiels
        self.countDuplicates.text = duplicates
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

 
        indicatorButton.setImage(UIImage(named: "Indicator"), for: .normal)
        indicatorButton.translatesAutoresizingMaskIntoConstraints = false
        
        purpureImageView.translatesAutoresizingMaskIntoConstraints = false
        
        photoImage.constrainWidth(constant: 41)
        photoImage.constrainHeight(constant: 31)
        photoImage.translatesAutoresizingMaskIntoConstraints = false
        
        sectionLabel.textColor = UIColor(red: 0.29, green: 0.31, blue: 0.67, alpha: 1.00)
        sectionLabel.font = .systemFont(ofSize: 9)
        
        countDuplicates.textColor = UIColor(red: 0.25, green: 0.25, blue: 0.25, alpha: 1.00)
        countFiels.font = .systemFont(ofSize: 14)
        
        setupConstraints()
    }
    
    
    func setupConstraints() {
        
        addSubview(purpureImageView)
        purpureImageView.anchor(top: centerYAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 5, left: 6, bottom: 7, right: 5))
        
        let presentStack = UIStackView(arrangedSubviews: [photoImage, sectionLabel, indicatorButton])
        presentStack.axis = .vertical
        presentStack.alignment = .center
        
        let diteilStack = UIStackView(arrangedSubviews: [countFiels, countDuplicates])
        diteilStack.axis = .vertical
        diteilStack.alignment = .center
        
        let overallStack = UIStackView(arrangedSubviews: [presentStack, diteilStack])
        overallStack.axis = .vertical
        overallStack.distribution = .equalSpacing
        
        addSubview(overallStack)
        overallStack.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 8, left: 0, bottom: 14, right: 0))
    }
}
