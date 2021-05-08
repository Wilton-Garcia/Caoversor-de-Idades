//
//  AgeConverterView.swift
//  Caoversor de Idades
//
//  Created by Wilton Garcia on 07/05/21.
//

import UIKit

final class AgeConverterView: UIView{
    
    private let viewBackground : UIView = {
        let viewBackground = UIView()
        viewBackground.backgroundColor = .blue
        viewBackground.translatesAutoresizingMaskIntoConstraints = true
        return viewBackground
    }()
    
    private func setupBackround(){
        addSubview(viewBackground)
        
        NSLayoutConstraint.activate([
            viewBackground.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            viewBackground.heightAnchor.constraint(equalTo: heightAnchor),
            viewBackground.leadingAnchor.constraint(equalTo: leadingAnchor),
            viewBackground.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
    convenience init(){
        self.init(frame:.zero)
        setupBackround()
    }
    
}
