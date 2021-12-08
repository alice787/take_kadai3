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
        let leftNum = Int(leftTextField.text ?? "") ?? 0
        let rightNum = Int(rightTextField.text ?? "") ?? 0

        let signedLeftNum: Int
        if leftSwitch.isOn {
            signedLeftNum = -leftNum
        } else {
            signedLeftNum = leftNum
        }

        let signedRightNum: Int
        if rightSwitch.isOn {
            signedRightNum = -rightNum
        } else {
            signedRightNum = rightNum
        }

        leftTextLabel.text = String(signedLeftNum)
        rightTextLabel.text = String(signedRightNum)

        resultLabel.text = String(signedLeftNum + signedRightNum)
    }
}
