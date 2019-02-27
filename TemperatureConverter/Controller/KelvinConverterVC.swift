
//
//  KelvinConverterVC.swift
//  TemperatureConverter
//
//  Created by Holland Clarke on 2/22/19.
//  Copyright © 2019 Holland Clarke. All rights reserved.
//

import UIKit

class KelvinConverterVC: UIViewController {

    @IBOutlet var valueTxtField: UITextField!
    @IBOutlet var fahrenheitValueLbl: UILabel!
    @IBOutlet var celsiusValueLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        valueTxtField.textAlignment = .center
        valueTxtField.keyboardType = .decimalPad
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        fahrenheitValueLbl.text = "0 ºF"
        celsiusValueLbl.text = "0 ºC"
    }

    @IBAction func convertBtnPressed(_ sender: UIButton) {
        
        if let text = valueTxtField.text {
            if let value = Double(text) {
                convertValue(value: value)
            } else {
                celsiusValueLbl.text = "Invalid Value"
                fahrenheitValueLbl.text = "Invalid Value"
            }
        }
        
    }
    @IBAction func fahrenheitConverterBtnPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    fileprivate func convertValue(value: Double) {
        
        let kelvinConverter = TemperatureConverter(temperatureType: .kelvin)
        kelvinConverter.setTemperature(value: value)
        fahrenheitValueLbl.text = String(kelvinConverter.getFahrenheitValue()) + " ºF"
        celsiusValueLbl.text = String(kelvinConverter.getCelsiusValue()) + " ºC"
        
    }
}

