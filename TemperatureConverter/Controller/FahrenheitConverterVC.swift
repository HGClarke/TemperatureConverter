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
      
        let fahrenheitConverter = TemperatureConverter(temperatureType: .fahrenheit, value: value)
        celsiusValueLbl.text = String(fahrenheitConverter.celsiusValue) + " ºC"
        kelvinValueLbl.text = String(fahrenheitConverter.kelvinValue) + " K"

    }
   

}
