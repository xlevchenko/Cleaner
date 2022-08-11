//
//  StorageInfoView.swift
//  Cleaner
//
//  Created by Olexsii Levchenko on 8/10/22.
//

import UIKit

class StorageInfoView: UIImageView {
    
    let storageLabel = TitleLabel(text: "Your Storage", textAlignment: .center, fontSize: 20)
    let availableMemoryLabel = TitleLabel(text: "76%", textAlignment: .center, fontSize: 60)
    
    let totalMemoryLabel = SecondaryTitleLable(text: "Total memory:", fontSize: 12)
    let countTotal = TitleLabel(text: "128 GB", textAlignment: .right, fontSize: 12)
    
    let availableLabel = SecondaryTitleLable(text: "Available:", fontSize: 12)
    let countAvailable = TitleLabel(text: "24 GB", textAlignment: .right, fontSize: 12)
    
    let trashSizeLabel = SecondaryTitleLable(text: "Trash size:", fontSize: 12)
    let countTrash = TitleLabel(text: "470 MB", textAlignment: .right, fontSize: 12)
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure() {
        image = UIImage(named: "StoregeEllipse")
        translatesAutoresizingMaskIntoConstraints = false
        storageLabel.font = .systemFont(ofSize: 20)
        
        //constrainHeight(constant: 200)
        //constrainWidth(constant: 200)
        
        setupConstraints()
    }
    
    
    func setupConstraints() {
        addSubview(storageLabel)
        let storageStack = UIStackView(arrangedSubviews: [storageLabel, availableMemoryLabel])
        storageStack.axis = .vertical
        storageStack.alignment = .center
        storageStack.spacing = 0
        
        let totalStack = UIStackView(arrangedSubviews: [totalMemoryLabel, countTotal])
        totalStack.axis = .horizontal
        totalStack.distribution = .equalSpacing
        totalStack.spacing = 10
        
        let availableStack = UIStackView(arrangedSubviews: [availableLabel, countAvailable])
        availableStack.axis = .horizontal
        availableStack.distribution = .equalSpacing
        availableStack.spacing = 10
        
        let trashStack = UIStackView(arrangedSubviews: [trashSizeLabel, countTrash])
        trashStack.axis = .horizontal
        trashStack.distribution = .equalSpacing
        trashStack.spacing = 10
        
        let overallStack = UIStackView(arrangedSubviews: [storageStack, totalStack, availableStack, trashStack])
        overallStack.axis = .vertical
        overallStack.alignment = .center
        availableStack.spacing = 10
        
        addSubview(overallStack)
        overallStack.centerInSuperview()
    }
    
}
