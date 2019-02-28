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
        
        self.hideKeyboardWhenTapped()
        valueTxtField.keyboardType = .decimalPad
        valueTxtField.textAlignment = .center
    }
    
 
    
    @IBAction func fahrenheitConvertBtnPressed(_ sender: UIButton) {
      self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func convertBtnPressed(_ sender: UIButton) {
        
        /* Ensure that the textfield has values in it */
        if let text = valueTxtField.text {
            /* Ensure that the value can be converted into a double */
            if let value = Double(text) {
                /* Covnert the value and return the different temperature values
                ** Then update the labels
                */
                let temperatures = convertValue(temperatureType: .celsius, value: value)
                updateValueLabels(temperatures: temperatures)

            } else {
                fahrenheitLbl.text = "Invalid Value"
                kelvinLbl.text = "Invalid Value"
            }
        }
        self.resignFirstResponder()
    }
    
    /* Updates the kelvin and farenheit ui labels */
    fileprivate func updateValueLabels(temperatures: Temperatures) {
        let fahrenheitValue = temperatures.fahrenheit
        let kelvinValue = temperatures.kelvin
        fahrenheitLbl.text = "\(fahrenheitValue) ºF"
        kelvinLbl.text = "\(kelvinValue) K"
    }
}
