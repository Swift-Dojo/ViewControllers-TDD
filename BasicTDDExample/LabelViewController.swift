//
//  LabelViewController.swift
//  BasicTDDExample
//
//  Created by Mario Alberto Barragán Espinosa on 20/03/21.
//

import UIKit

class LabelViewController: UIViewController {
    @IBOutlet weak private(set) var titleLabel: UILabel!
    @IBOutlet weak private(set) var showTitleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
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
