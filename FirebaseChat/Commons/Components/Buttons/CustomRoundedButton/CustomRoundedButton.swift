//
//  CustomRoundedButton.swift
//  FirebaseChat
//
//  Created by Alan Casas on 21/07/2020.
//  Copyright © 2020 Alan Casas. All rights reserved.
//

import UIKit

protocol CustomRoundedButtonDelegate: class {
    func customButtonTapped()
}

class CustomRoundedButton: UIButton {

    fileprivate var generalView: UIView!

    @IBOutlet weak var customButton: UIButton!

    weak var delegate: CustomRoundedButtonDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setup()
    }

    //MARK: PRIVATE
    internal func setup() {
        generalView = Bundle.main.loadNibNamed(NibName.customRoundedButton, owner: self, options: nil)?.first as? UIView
        generalView.frame = bounds
        self.generalView.backgroundColor = .white
        self.backgroundColor = .white
        self.addSubview(generalView)
    }

    func setupCustomButton (title: String, backgroundColor: UIColor = .white, titleColor: UIColor = .black, titleColorState: UIControl.State = .normal, cornerRadius: CGFloat = 30, shadowColor: CGColor = UIColor.darkGray.cgColor, shadowOpacity: Float = 10, shadowOffset: CGSize = CGSize(width: 10, height: 10), shadowRadius: CGFloat ) {
        setTitle(title, for: state)
        setBackgroundColor(color: backgroundColor)
        setTitleColor(color: titleColor, state: titleColorState)
        setCornerRadius(radius: cornerRadius)
        setShadow(cGColor: shadowColor, shadowOpacity: shadowOpacity, shadowOffset: shadowOffset, shadowRadius: shadowRadius)
    }

    func setBackgroundColor(color: UIColor) {
        customButton.backgroundColor = color
    }

    func setTitleColor(color: UIColor, state: UIControl.State) {
        customButton.setTitleColor(color, for: state)
    }

    func setCornerRadius (radius: CGFloat) {
        customButton.layer.cornerRadius = radius
    }

    func setShadow (cGColor: CGColor, shadowOpacity: Float, shadowOffset:CGSize, shadowRadius: CGFloat) {
        customButton.layer.shadowColor = cGColor
        customButton.layer.shadowOpacity = 10
        customButton.layer.shadowOffset = CGSize(width: 10, height: 10)
        customButton.layer.shadowRadius = 10
    }

    @IBAction func customButtonTapped(_ sender: UIButton) {
        self.delegate?.customButtonTapped()
    }

}

