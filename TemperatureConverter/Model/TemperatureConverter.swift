//
//  TemperatureConverter.swift
//  TemperatureConverter
//
//  Created by Holland Clarke on 2/5/19.
//  Copyright © 2019 Holland Clarke. All rights reserved.
//

import Foundation

public enum TemperatureType {
    /* Different temperature Types */
    case kelvin
    case fahrenheit
    case celsius
    
}

class TemperatureConverter {
    
    private var temperatureType: TemperatureType
    private var temperatureValue: Double
   
    
    public init(temperatureType: TemperatureType) {
        self.temperatureType = temperatureType
        self.temperatureValue = value
    }
   
   
    public var fahrenheitValue: Int {
        var finalValue: Int
        
        switch temperatureType {
        case .celsius:
            finalValue = convertTemperatureType(from: .celsius, to: .fahrenheit, withValue: temperatureValue)
            break
        case .kelvin:
            finalValue = convertTemperatureType(from: .kelvin, to: .fahrenheit, withValue: temperatureValue)
            break
        case .fahrenheit:
            finalValue = Int(temperatureValue)
            break
        }
        
        return finalValue
    }
    
    public var celsiusValue: Int {
        var finalValue: Int
        
        switch temperatureType {
        case .fahrenheit:
            finalValue = convertTemperatureType(from: .fahrenheit, to: .celsius, withValue: temperatureValue)
            break
        case .kelvin:
            finalValue = convertTemperatureType(from: .kelvin, to: .celsius, withValue: temperatureValue)
            break
        case .celsius:
            finalValue = Int(temperatureValue)
            break
        }
        
        return finalValue
    }
    
    public var kelvinValue: Int {
        var finalValue: Int
        
        switch temperatureType {
        case .celsius:
            finalValue = convertTemperatureType(from: .celsius, to: .kelvin, withValue: temperatureValue)
            break
        case .fahrenheit:
            finalValue = convertTemperatureType(from: .fahrenheit, to: .kelvin, withValue: temperatureValue)
            break
        case .kelvin:
            finalValue = Int(temperatureValue)
            break
            
        }
        
        return finalValue
    }
    
    // MARK - Convert From Celsius Functions
    private func celsiusToFarenheit(value: Double) -> Double {
        var finalValue: Double
        finalValue = ((9.0 / 5.0) * value) + 32
        finalValue = finalValue.rounded(.up)
        return finalValue
    }
    
    private func celsiusToKelvin(value: Double) -> Double {
        var finalValue: Double
        finalValue = 273.15 + 32
        finalValue = finalValue.rounded(.up)
        return finalValue
    }
    
    // MARK - Convert from Farenheit Functions
    private func farenheitToCelsius(value: Double) -> Double {
        var finalValue: Double = 0
        finalValue = (value - 32) * (5.0 / 9.0)
        finalValue = finalValue.rounded(.up)
        return finalValue
    }
    
    private func fahrenheitToKelvin(value: Double) -> Double {
        var finalValue: Double = 0
        finalValue = ((5.0 / 9.0) * (value - 32)) + 273.15
        finalValue = finalValue.rounded(.up)
        return finalValue
    }
    
    // MARK - Convert from Kelvin Functions
    private func kelvinToCelsius(value: Double) -> Double {
        var finalValue: Double
        finalValue = value - 273.15
        finalValue = finalValue.rounded(.up)
        return finalValue
    }
    
    private func kelvinToFarenheit(value: Double) -> Double {
        var finalValue: Double
        finalValue = (value - 273.15) * (9 / 5) + 32
        finalValue = finalValue.rounded(.up)
        return finalValue
    }
    
    private func convertTemperatureType(from: TemperatureType, to: TemperatureType, withValue: Double) -> Int {
        var finalValue = 0
        
        /* Case converting from celsius to fahrenheit or kelvin */
        if from == .celsius {
            if to == .fahrenheit {
                finalValue = Int(celsiusToFarenheit(value: withValue))
            } else if to == .kelvin {
                finalValue = Int(celsiusToKelvin(value: withValue))
            }
        }
        
        /* Case converting from fahrenheit to celsius or kelvin */
        if from == .fahrenheit {
            if to == .celsius {
                finalValue = Int(farenheitToCelsius(value: withValue))
            } else if to == .kelvin {
                finalValue = Int(fahrenheitToKelvin(value: withValue))
            }
        }
        
        /* Case converting from kelvin to fahrenheit or celsius */
        if from == .kelvin {
            if to == .fahrenheit {
                finalValue = Int(kelvinToFarenheit(value: withValue))
            } else if to == .celsius {
                finalValue = Int(kelvinToCelsius(value: withValue))
            }
        }
        
        return finalValue
    }
    
    
}
