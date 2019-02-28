//
//  ViewControllerExtensions.swift
//  TemperatureConverter
//
//  Created by Holland Clarke on 2/27/19.
//  Copyright © 2019 Holland Clarke. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func convertValue(temperatureType: TemperatureType, value: Double) -> Temperatures {
        let tempConverter = TemperatureConverter(temperatureType: temperatureType)
        tempConverter.setTemperature(value: value)
        let celsiusValue = tempConverter.getCelsiusValue()
        let fahrenheitValue = tempConverter.getFahrenheitValue()
        let kelvinValue = tempConverter.getKelvinValue()
        let temperatures = Temperatures(celsius: celsiusValue, fahrenheit: fahrenheitValue, kelvin: kelvinValue)
        
        return temperatures
    }
    
    func hideKeyboardWhenTapped() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        self.view.endEditing(true)
    }
    
    
}
