//
//  RightBarButtonItem.swift
//  Cleaner
//
//  Created by Olexsii Levchenko on 8/10/22.
//

import UIKit

class RightBarButtonItem: UIButton {
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        setTitle(" CLEANER", for: .normal)
        setImage(UIImage(named: "Cleaner"), for: .normal)
        titleLabel?.font = .boldSystemFont(ofSize: 16)
        clipsToBounds = true
        layer.masksToBounds = true
    }
}
