// Created on November 9
// Created by Nicholas Pasco-Arnone
// Created for ICS3U
// This program takes a mark and displays the pr

import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    
    
    let instructionLabel = UILabel()
    let calculateButton = UIButton()
    let answerLabel = UILabel()
    var numberTextField = UITextField()
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionLabel.text = "enter a mark to get the pecentage"
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        numberTextField.borderStyle = UITextBorderStyle.roundedRect
        numberTextField.placeholder = "Enter mark"
        view.addSubview(numberTextField)
        numberTextField.translatesAutoresizingMaskIntoConstraints = false
        numberTextField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        numberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        calculateButton.setTitle("calculate", for: .normal)
        calculateButton.setTitleColor(.blue, for: .normal)
        calculateButton.titleLabel?.textAlignment = .center
        calculateButton.addTarget(self, action: #selector(findPercentage), for: .touchUpInside)
        view.addSubview(calculateButton)
        calculateButton.translatesAutoresizingMaskIntoConstraints = false
        calculateButton.topAnchor.constraint(equalTo: numberTextField.bottomAnchor, constant: 20).isActive = true
        calculateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: calculateButton.bottomAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    
    @objc func findPercentage() {
        var mark = (numberTextField.text)
        
        if mark == "R" {
            mark = "0%"
        }
        else if mark == "1-" {
        mark = "51%"
    }
        else if mark == "1"{
        mark = "55%"
}
        else if mark == "1+" {
            mark = "58%"
        }
        else if mark == "2-"{
            mark = "61%"
        }
        else if mark == "2" {
            mark = "65%"
        }
        else if mark == "2+"{
            mark = "68%"
        }
        else if mark == "3-"{
            mark = "71%"
        }
        else if mark == "3" {
            mark = "75%"
        }
        else if mark == "3+"{
            mark = "78%"
        }
        else if mark == "4-"{
            mark = "83%"
        }
        else if mark == "4" {
            mark = "91%"
        }
        else if mark == "4+"{
            mark = "98%"
        }
        answerLabel.text = mark
}
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
