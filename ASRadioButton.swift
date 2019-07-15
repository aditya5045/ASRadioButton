//
//  ASRadioButton.swift
//
//  Created by apple on 15/01/19.
//  Copyright © 2019 Aditya. All rights reserved.
//

import UIKit

@IBDesignable
class ASRadioButton: UIButton {
    
    /// Set Image for Radio Button for Unselected Button
    @IBInspectable public var unSelectedImage: UIImage = #imageLiteral(resourceName: "ic_selected") {
        didSet {
            if isChecked == false {
                self.setImage(unSelectedImage, for: .normal)
            }
        }
    }
    
    /// Set Image for Radio Button for Selected Button
    @IBInspectable public var selectedImage: UIImage = #imageLiteral(resourceName: "ic_unselected") {
        didSet {
            if isChecked == true {
                self.setImage(selectedImage, for: .normal)
            }
        }
    }
    
    /// Get and Set the Radio button is selected or not
    @IBInspectable public var isChecked: Bool = false {
        didSet {}
    }

    /// If Radio button is selected or unselected, For update on the UI need to call this method
    public func changeFillState() {
        if isChecked == true {
            self.setImage(selectedImage, for: .normal)
        } else {
            self.setImage(unSelectedImage, for: .normal)
        }
    }
    
    // Overriden methods.
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        centerTextAndImage(spacing:  12.0)
    }
    
    private func centerTextAndImage(spacing: CGFloat) {
        let insetAmount = spacing / 2
        imageEdgeInsets = UIEdgeInsets(top: 0, left: -insetAmount, bottom: 0, right: insetAmount)
        titleEdgeInsets = UIEdgeInsets(top: 0, left: insetAmount, bottom: 0, right: -insetAmount)
        contentEdgeInsets = UIEdgeInsets(top: 0, left: insetAmount, bottom: 0, right: insetAmount)
    }
}
