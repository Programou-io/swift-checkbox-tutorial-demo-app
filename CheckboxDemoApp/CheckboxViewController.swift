//
//  CheckboxViewController.swift
//  CheckboxDemoApp
//
//  Created by Paolo Prodossimo Lopes on 11/06/24.
//

import UIKit

class CheckboxViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let checkboxButton = CheckboxButton()
        checkboxButton.addTarget(self, action: #selector(checkboxButtonActionHandler), for: .touchUpInside)
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            customView: checkboxButton
        )
    }
    
    @objc private func checkboxButtonActionHandler(_ checkbox: CheckboxButton) {
        print("isSelected: \(checkbox.isSelected)")
    }
}
