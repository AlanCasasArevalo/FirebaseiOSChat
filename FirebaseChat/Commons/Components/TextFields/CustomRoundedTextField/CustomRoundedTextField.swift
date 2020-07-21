//
//  CustomRoundedTextField.swift
//  FirebaseChat
//
//  Created by Alan Casas on 21/07/2020.
//  Copyright © 2020 Alan Casas. All rights reserved.
//

import UIKit

protocol CustomRoundedTextFieldDelegate: class {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool
    func textFieldDidBeginEditing(_ textField: UITextField)
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool
    func textFieldDidEndEditing(_ textField: UITextField)
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason)
    func textFieldDidChangeSelection(_ textField: UITextField)
    func textFieldShouldClear(_ textField: UITextField) -> Bool
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
}

class CustomRoundedTextField: UIView {

    fileprivate var generalView: UIView!

    @IBOutlet weak var customRoundedTextField: UITextField!

    weak var delegate: CustomRoundedTextFieldDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setup()
        setupDelegate()
    }

    //MARK: PRIVATE
    internal func setup() {
        generalView = Bundle.main.loadNibNamed(NibName.customRoundedTextField, owner: self, options: nil)?.first as? UIView
        generalView.frame = bounds
        self.generalView.backgroundColor = .white
        self.backgroundColor = .white
        self.addSubview(generalView)
    }

    func setupDelegate() {
        customRoundedTextField.delegate = self
    }

    func setupCustomTextField(title: String, placeHolder: String, alignment: NSTextAlignment = .center, backgroundColor: UIColor = .white, titleColor: UIColor = .black, cornerRadius: CGFloat = 30, shadowColor: CGColor = UIColor.darkGray.cgColor, shadowOpacity: Float = 10, shadowOffset: CGSize = CGSize(width: 10, height: 10), shadowRadius: CGFloat) {
        setTextOnTextField(text: title)
        setPlaceHolder(placeHolder: placeHolder)
        setTextAlign(alignment: alignment)
        setBackgroundColor(color: backgroundColor)
        setTitleColor(color: titleColor)
        setCornerRadius(radius: cornerRadius)
        setShadow(cGColor: shadowColor, shadowOpacity: shadowOpacity, shadowOffset: shadowOffset, shadowRadius: shadowRadius)
    }

    func setTextOnTextField(text: String) {
        customRoundedTextField.text = text
    }

    func setPlaceHolder(placeHolder: String) {
        customRoundedTextField.placeholder = placeHolder
    }

    func setBackgroundColor(color: UIColor) {
        customRoundedTextField.backgroundColor = color
    }

    func setTitleColor(color: UIColor) {
        customRoundedTextField.tintColor = color
    }

    func setCornerRadius(radius: CGFloat) {
        customRoundedTextField.layer.cornerRadius = radius
    }

    func setTextAlign(alignment: NSTextAlignment) {
        customRoundedTextField.textAlignment = alignment
    }

    func setShadow(cGColor: CGColor, shadowOpacity: Float, shadowOffset: CGSize, shadowRadius: CGFloat) {
        customRoundedTextField.layer.shadowColor = cGColor
        customRoundedTextField.layer.shadowOpacity = 10
        customRoundedTextField.layer.shadowOffset = CGSize(width: 10, height: 10)
        customRoundedTextField.layer.shadowRadius = 10
    }
}

extension CustomRoundedTextField: UITextFieldDelegate {

    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        delegate?.textFieldShouldBeginEditing(textField)
        return true
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        delegate?.textFieldDidBeginEditing(textField)
    }

    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        delegate?.textFieldShouldEndEditing(textField)
        return true
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        delegate?.textFieldDidEndEditing(textField)
    }

    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        delegate?.textFieldDidEndEditing(textField, reason: reason)
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }

    func textFieldDidChangeSelection(_ textField: UITextField) {
        delegate?.textFieldDidChangeSelection(textField)
    }

    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        delegate?.textFieldShouldClear(textField)
        return true
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        delegate?.textFieldShouldReturn(textField)
        return true
    }

}
