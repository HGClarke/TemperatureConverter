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
        
        self.hideKeyboardWhenTapped() // allows us to dismiss keyboard when tapping screen
        valueTxtField.textAlignment = .center
        valueTxtField.keyboardType = .decimalPad

    }
    
    @IBAction func convertBtnPressed(_ sender: UIButton) {
        // Ensures text field is not empty
        if let text = valueTxtField.text {
            // Ensures text can be converted
            if let value = Double(text) {
                
                let temperatures = convertValue(temperatureType: .fahrenheit, value: value)
                updateValueLabels(temperatures: temperatures)
                
            } else {
//              If the text can't be converted to a value then
//              Then  set the uilabels to invalid
                celsiusValueLbl.text = "Invalid Value"
                kelvinValueLbl.text = "Invalid Value"
                print()
            }
        }
        
        self.resignFirstResponder()
    }
//  Updates the labels
    fileprivate func updateValueLabels(temperatures: Temperatures) {
        
        let celsiusValue = temperatures.celsius
        let kelvinValue = temperatures.kelvin
        celsiusValueLbl.text = "\(celsiusValue) ºC"
        kelvinValueLbl.text = "\(kelvinValue) ºF"
        
    }
}
