//
//  ViewController.swift
//  take_kadai3
//
//  Created by take on 2021/12/07.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var leftTextField: UITextField!
    @IBOutlet private weak var rightTextField: UITextField!

    @IBOutlet private weak var leftTextLabel: UILabel!
    @IBOutlet private weak var rightTextLabel: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBOutlet private weak var leftSwitch: UISwitch!
    @IBOutlet private weak var rightSwitch: UISwitch!

    @IBAction private func resultButtonTapped(_ sender: Any) {
        var leftNum = Int(leftTextField.text ?? "") ?? 0
        var rightNum = Int(rightTextField.text ?? "") ?? 0

        if leftSwitch.isOn {
            leftNum *= -1
        }
        if rightSwitch.isOn {
            rightNum *= -1
        }

        leftTextLabel.text = String(leftNum)
        rightTextLabel.text = String(rightNum)

        resultLabel.text = String(leftNum + rightNum)
    }
}
