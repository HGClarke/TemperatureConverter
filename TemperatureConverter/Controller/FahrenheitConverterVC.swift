//
//  FahrenheitConverterVC.swift
//  TemperatureConverter
//
//  Created by Holland Clarke on 2/24/19.
//  Copyright © 2019 Holland Clarke. All rights reserved.
//

import UIKit

class FahrenheitConverterVC: UIViewController {

    @IBOutlet var valueTxtField: UITextField!
    @IBOutlet var celsiusValueLbl: UILabel!
    @IBOutlet var kelvinValueLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        valueTxtField.textAlignment = .center
        valueTxtField.keyboardType = .decimalPad

    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        valueTxtField.text = ""
        celsiusValueLbl.text = "0 ºC"
        kelvinValueLbl.text = "0 K"
        
    }
    
    
    @IBAction func convertBtnPressed(_ sender: UIButton) {
        if let text = valueTxtField.text {
            if let value = Double(text) {
                convertValue(value: value)
            } else {
                celsiusValueLbl.text = "Invalid Value"
                kelvinValueLbl.text = "Invalid Value"
            }
        }
    
    }
    
    fileprivate func convertValue(value: Double) {
      
        let fahrenheitConverter = TemperatureConverter(temperatureType: .fahrenheit)
        fahrenheitConverter.setTemperature(value: value)
        celsiusValueLbl.text = String(fahrenheitConverter.getCelsiusValue()) + " ºC"
        kelvinValueLbl.text = String(fahrenheitConverter.getKelvinValue()) + " K"

    }
   
    @IBAction func showKelvinConverter(_ sender: UIButton) {
//        let segueIdentifier = "ShowKelvinConverter"
//        self.performSegue(withIdentifier: segueIdentifier, sender: self)

    }
    
    @IBAction func showCelsiusConverter(_ sender: Any) {
//        let segueIdentifier = "ShowCelsiusConverter"
//        self.performSegue(withIdentifier: segueIdentifier, sender: self)
    }
}

extension UIViewController {
    @objc func dismissKeyboardWhenTapped() {
//        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard)),
//        tap.cancelsTouchesInView = false
//        view.addGestureRecognizer(tap)
    }
    func dismissKeyboard() {
        self.view.endEditing(true)
    }
}
