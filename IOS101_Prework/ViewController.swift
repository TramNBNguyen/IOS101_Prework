//
//  ViewController.swift
//  IOS101_Prework
//
//  Created by Nguyễn Trâm on 1/6/25.
//

import UIKit

class ViewController: UIViewController {
    
    // UI Elements
    var label: UILabel!
    var changeTextColorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup the UI
        setupUI()
    }
    
    // Function to set up UI elements
    func setupUI() {
        // Label
        label = UILabel()
        label.text = "Welcome to the App!"
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        // Button to change background color
        let changeBackgroundButton = UIButton(type: .system)
        changeBackgroundButton.setTitle("Change Background", for: .normal)
        changeBackgroundButton.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        changeBackgroundButton.setTitleColor(.white, for: .normal)
        changeBackgroundButton.backgroundColor = .systemBlue
        changeBackgroundButton.layer.cornerRadius = 8
        changeBackgroundButton.translatesAutoresizingMaskIntoConstraints = false
        changeBackgroundButton.addTarget(self, action: #selector(changeBackgroundColor(_:)), for: .touchUpInside)
        view.addSubview(changeBackgroundButton)
        
        // Button to change text color
        changeTextColorButton = UIButton(type: .system)
        changeTextColorButton.setTitle("Change Text Color", for: .normal)
        changeTextColorButton.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        changeTextColorButton.setTitleColor(.white, for: .normal)
        changeTextColorButton.backgroundColor = .systemGreen
        changeTextColorButton.layer.cornerRadius = 8
        changeTextColorButton.translatesAutoresizingMaskIntoConstraints = false
        changeTextColorButton.addTarget(self, action: #selector(changeTextColor(_:)), for: .touchUpInside)
        view.addSubview(changeTextColorButton)
        
        // Constraints
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            
            changeBackgroundButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            changeBackgroundButton.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            changeBackgroundButton.widthAnchor.constraint(equalToConstant: 200),
            changeBackgroundButton.heightAnchor.constraint(equalToConstant: 50),
            
            changeTextColorButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            changeTextColorButton.topAnchor.constraint(equalTo: changeBackgroundButton.bottomAnchor, constant: 20),
            changeTextColorButton.widthAnchor.constraint(equalToConstant: 200),
            changeTextColorButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    // Function to change background color
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    // Function to change text color
    @IBAction func changeTextColor(_ sender: UIButton) {
        let randomColor = changeColor()
        label.textColor = randomColor
    }
    
    // Utility function to generate a random color
    func changeColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
