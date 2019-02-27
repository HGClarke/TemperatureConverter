//
//  CelsiusConverterVC.swift
//  TemperatureConverter
//
//  Created by Holland Clarke on 2/24/19.
//  Copyright © 2019 Holland Clarke. All rights reserved.
//

import UIKit

class CelsiusConverterVC: UIViewController {

    @IBOutlet var valueTxtField: UITextField!
    @IBOutlet var fahrenheitLbl: UILabel!
    @IBOutlet var kelvinLbl: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        valueTxtField.keyboardType = .decimalPad
        valueTxtField.textAlignment = .center
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        fahrenheitLbl.text = "0 ºF"
        kelvinLbl.text = "0 K"
//        self.dismissKeyboardWhenTapped()

    }
    
    @IBAction func fahrenheitConvertBtnPressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func convertBtnPressed(_ sender: UIButton) {
        if let text = valueTxtField.text {
            if let value = Double(text) {
                convertValue(value: value)
            } else {
                fahrenheitLbl.text = "Invalid Value"
                kelvinLbl.text = "Invalid Value"
            }
        }
    }
    
    fileprivate func convertValue(value: Double) {
        
        let celsiusConverter = TemperatureConverter(temperatureType: .celsius)
        celsiusConverter.setTemperature(value: value)
        fahrenheitLbl.text = String(celsiusConverter.getFahrenheitValue()) + " ºF"
        kelvinLbl.text = String(celsiusConverter.getKelvinValue()) + " K"
        
    }
}
