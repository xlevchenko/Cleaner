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
    
    let photoImage = UIImageView(image: UIImage(named: "DuplicatesPhotos"))
    let sectionLabel = TitleLabel(text: "Duplicates photos", textAlignment: .center, fontSize: 17)
    let countFiels = TitleLabel(text: "120 files", textAlignment: .center, fontSize: 20)
    let countDuplicates = SecondaryTitleLable(text: "20 duplicate ", fontSize: 16)
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure() {
        image = UIImage(named: "WhiteEllipse")
        translatesAutoresizingMaskIntoConstraints = false
        constrainWidth(constant: 210)
        constrainHeight(constant: 210)
        
        sectionLabel.textColor = UIColor(red: 0.29, green: 0.31, blue: 0.67, alpha: 1.00)
        countDuplicates.textColor = UIColor(red: 0.25, green: 0.25, blue: 0.25, alpha: 1.00)
        indicatorButton.setImage(UIImage(named: "Indicator"), for: .normal)
        
        indicatorButton.translatesAutoresizingMaskIntoConstraints = false
        
        purpureImageView.translatesAutoresizingMaskIntoConstraints = false
        
        photoImage.constrainWidth(constant: 61)
        photoImage.constrainHeight(constant: 51)
        photoImage.translatesAutoresizingMaskIntoConstraints = false
    
        setupConstraints()
    }
    
    
    func setupConstraints() {
        addSubview(indicatorButton)
        indicatorButton.centerInSuperview()
        
        addSubview(purpureImageView)
        purpureImageView.anchor(top: centerYAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor)
        
        let presentStack = UIStackView(arrangedSubviews: [photoImage, sectionLabel])
        presentStack.axis = .vertical
        presentStack.distribution = .fillEqually
        presentStack.alignment = .center
        
        let diteilStack = UIStackView(arrangedSubviews: [UIView(), countFiels, countDuplicates])
        diteilStack.axis = .vertical
        diteilStack.distribution = .fillEqually
        diteilStack.alignment = .center
        
        let stackView = UIStackView(arrangedSubviews: [presentStack, diteilStack])
        stackView.axis = .vertical
        stackView.distribution = .equalCentering
        
        addSubview(stackView)
        stackView.centerXInSuperview()
    }
}
