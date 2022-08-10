//
//  TitleLabel.swift
//  Cleaner
//
//  Created by Olexsii Levchenko on 8/10/22.
//

import UIKit

class TitleLabel: UILabel {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    convenience init(text: String, textAlignment: NSTextAlignment, fontSize: CGFloat) {
        self.init(frame: .zero)
        self.text           = text
        self.textAlignment  = textAlignment
        self.font           = UIFont.systemFont(ofSize: fontSize, weight: .bold)
    }
    
    
    private func configure() {
        textColor                   = .white
        adjustsFontSizeToFitWidth   = true
        minimumScaleFactor          = 0.9
        lineBreakMode               = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
