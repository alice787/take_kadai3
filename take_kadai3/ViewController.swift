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
    // letで宣言する
//        var leftNum = Int(leftTextField.text ?? "") ?? 0
//        var rightNum = Int(rightTextField.text ?? "") ?? 0

        let leftNum = Int(leftTextField.text ?? "") ?? 0
        let rightNum = Int(rightTextField.text ?? "") ?? 0

        let signedLeftNum: Int // letで宣言だけする

        if leftSwitch.isOn {
//            leftNum *= -1
            signedLeftNum = -leftNum
        } else {
            signedLeftNum = leftNum
        }

        let signedRightNum: Int // letで宣言だけする

        if rightSwitch.isOn {
//            rightNum *= -1
            signedRightNum = -rightNum
        } else {
            signedRightNum = rightNum
        }

        leftTextLabel.text = String(signedLeftNum)
        rightTextLabel.text = String(signedRightNum)

        resultLabel.text = String(signedLeftNum + signedRightNum)
    }
}
