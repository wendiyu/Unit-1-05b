

// Created on: September-28-2018
// Created by: Wendi Yu
// Created for: ICS3U
// This program is the UIKit cost of pizza
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let questionLable = UILabel()
    let diameterLable = UILabel()
    let diameterTextField = UITextField()
    let totalLabel = UILabel()
    let answerButton = UIButton()
    let LABOURCOST : Float = 0.75
    let RENT : Float = 1.00
    let MATERIAL : Float = 0.50
    let HST : Float = 0.13
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        questionLable.text = "Enter the diameter of the pizza you would like & we will calculate the cost."
        view.addSubview(questionLable)
        questionLable.translatesAutoresizingMaskIntoConstraints = false
        questionLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        questionLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        diameterLable.text = "Enter diameter"
        view.addSubview(diameterLable)
        diameterLable.translatesAutoresizingMaskIntoConstraints = false
        diameterLable.topAnchor.constraint(equalTo: questionLable.bottomAnchor, constant: 10).isActive = true
        diameterLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        diameterTextField.borderStyle = UITextBorderStyle.roundedRect
        diameterTextField.placeholder = "Put a whole number in inch           "
        view.addSubview(diameterTextField)
        diameterTextField.translatesAutoresizingMaskIntoConstraints = false
        diameterTextField.topAnchor.constraint(equalTo: diameterLable.bottomAnchor, constant: 5).isActive = true
        diameterTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerButton.setTitle("Answer", for: .normal)
        answerButton.setTitleColor(.blue, for: .normal)
        answerButton.addTarget(self, action: #selector(calculateCostOfPizza), for: .touchUpInside)
        view.addSubview(answerButton)
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        answerButton.topAnchor.constraint(equalTo: diameterTextField.bottomAnchor, constant: 10).isActive = true
        answerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        totalLabel.text = nil
        view.addSubview(totalLabel)
        totalLabel.translatesAutoresizingMaskIntoConstraints = false
        totalLabel.topAnchor.constraint(equalTo: answerButton.bottomAnchor, constant: 20).isActive = true
        totalLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
    }
    
    @objc func calculateCostOfPizza() {
        // show answers 
        let diameter : Float = Float(Int(diameterTextField.text!)!)
        
        let cost = (LABOURCOST + RENT) + (MATERIAL * diameter)
        let tax = cost * HST
        let total = tax + cost
        
        totalLabel.text = String(format: "The cost is : $ %.2f", total)
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
