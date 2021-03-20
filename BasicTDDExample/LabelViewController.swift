//
//  LabelViewController.swift
//  BasicTDDExample
//
//  Created by Mario Alberto Barragán Espinosa on 20/03/21.
//

import UIKit

class LabelViewController: UIViewController {
    let titleLabel = UILabel()
    let showTitleButton = UIButton()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI() {
        titleLabel.isHidden = true
        showTitleButton.addTarget(self, action: #selector(tapShowTitleButton), for: .touchUpInside)
    }
    
    @objc private func tapShowTitleButton() {
        titleLabel.isHidden = false
        titleLabel.text = "Hola mundo"
    }
    
}
