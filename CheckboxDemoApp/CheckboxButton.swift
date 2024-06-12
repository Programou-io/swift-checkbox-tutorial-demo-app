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
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        isSelected.toggle()
    }
}
