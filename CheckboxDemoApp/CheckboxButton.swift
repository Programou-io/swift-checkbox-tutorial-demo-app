//
//  CheckboxButton.swift
//  CheckboxDemoApp
//
//  Created by Paolo Prodossimo Lopes on 11/06/24.
//

import UIKit

final class CheckboxButton: UIButton {
    
    private let selectedImage = UIImage(systemName: "checkmark.square.fill")
    private let unselectedImage = UIImage(systemName: "square")
    
    convenience init() {
        self.init(frame: .zero)
        setImage(unselectedImage, for: .normal)
        setImage(selectedImage, for: .selected)
        addTarget(self, action: #selector(checkboxDidTouchUpInsideActionHandler), for: .touchUpInside)
    }
    
    @objc private func checkboxDidTouchUpInsideActionHandler(_ button: UIButton) {
        button.isSelected.toggle()
    }
}
