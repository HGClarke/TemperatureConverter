//
//  TemperatureConverterTests.swift
//  TemperatureConverter
//
//  Created by Holland Clarke on 2/6/19.
//  Copyright © 2019 Holland Clarke. All rights reserved.
//

import XCTest
@testable import TemperatureConverter


class TemperatureConverterTests: XCTestCase {
    
    var fahrenheitConverter = TemperatureConverter(temperatureType: .fahrenheit)
    var celsiusConverter = TemperatureConverter(temperatureType: .celsius)
    var kelvinConverter = TemperatureConverter(temperatureType: .kelvin)
    
    var fahrenheitExpectedValue: Int = 0
    var celsiusExpectedValue: Int = 0
    var kelvinExpectedValue: Int = 0
    
    override func setUp() {
        
    }

    override func tearDown() {
      
    }
    
    func testFahrenheitConversion1() {
        let value: Double = 32
        fahrenheitConverter.setTemperature(value: value)
        celsiusExpectedValue = 0
        kelvinExpectedValue = 273
        XCTAssertEqual(fahrenheitConverter.getCelsiusValue(), celsiusExpectedValue)
        XCTAssertEqual(fahrenheitConverter.getKelvinValue(), kelvinExpectedValue)
        XCTAssertEqual(fahrenheitConverter.getFahrenheitValue(), Int(value.rounded()))

    }

    func testFahrenheitConversion2() {
        
        let value: Double = 100
        fahrenheitConverter.setTemperature(value: value)
        celsiusExpectedValue = 38
        kelvinExpectedValue = 311
        XCTAssertEqual(fahrenheitConverter.getCelsiusValue(), celsiusExpectedValue)
        XCTAssertEqual(fahrenheitConverter.getKelvinValue(), kelvinExpectedValue)
        XCTAssertEqual(fahrenheitConverter.getFahrenheitValue(), Int(value.rounded()))
        
    }
    
    func testFahrenheitConversion3() {
        let value = 34.89
        fahrenheitConverter.setTemperature(value: value)
        celsiusExpectedValue = 2
        kelvinExpectedValue = 275
        XCTAssertEqual(fahrenheitConverter.getCelsiusValue(), celsiusExpectedValue)
        XCTAssertEqual(fahrenheitConverter.getKelvinValue(), kelvinExpectedValue)
        XCTAssertEqual(fahrenheitConverter.getFahrenheitValue(), Int(value.rounded()))

    }
    
    func testFahrenheitConversion4() {
        
        let value = 0.00
        fahrenheitConverter.setTemperature(value: value)
        celsiusExpectedValue = -18
        kelvinExpectedValue = 255
        XCTAssertEqual(fahrenheitConverter.getCelsiusValue(), celsiusExpectedValue)
        XCTAssertEqual(fahrenheitConverter.getKelvinValue(), kelvinExpectedValue)
        XCTAssertEqual(fahrenheitConverter.getFahrenheitValue(), Int(value.rounded()))

    }
    
    func testFahrenheitConversion5() {
        
        let value = -8.00
        fahrenheitConverter.setTemperature(value: value)
        celsiusExpectedValue = -22
        kelvinExpectedValue = 251
        XCTAssertEqual(fahrenheitConverter.getCelsiusValue(), celsiusExpectedValue)
        XCTAssertEqual(fahrenheitConverter.getKelvinValue(), kelvinExpectedValue)
        XCTAssertEqual(fahrenheitConverter.getFahrenheitValue(), Int(value.rounded()))
    
    }
    
    func testCelsiusConversion1() {
        
        let value: Double = -253
        celsiusConverter.setTemperature(value: value)
        fahrenheitExpectedValue = -423
        kelvinExpectedValue = 20
        XCTAssertEqual(celsiusConverter.getFahrenheitValue(), fahrenheitExpectedValue)
        XCTAssertEqual(celsiusConverter.getKelvinValue(), kelvinExpectedValue)
        XCTAssertEqual(celsiusConverter.getCelsiusValue(), Int(value.rounded()))
    }
    
    func testCelsiusConversion2() {
        
        let value: Double = 0
        celsiusConverter.setTemperature(value: value)
        fahrenheitExpectedValue = 32
        kelvinExpectedValue = 273
        XCTAssertEqual(celsiusConverter.getFahrenheitValue(), fahrenheitExpectedValue)
        XCTAssertEqual(celsiusConverter.getKelvinValue(), kelvinExpectedValue)
        XCTAssertEqual(celsiusConverter.getCelsiusValue(), Int(value.rounded()))
    }
    
    func testCelsiusConversion3() {
        
        let value: Double = 212
        celsiusConverter.setTemperature(value: value)
        fahrenheitExpectedValue = 414
        kelvinExpectedValue = 485
        XCTAssertEqual(celsiusConverter.getFahrenheitValue(), fahrenheitExpectedValue)
        XCTAssertEqual(celsiusConverter.getKelvinValue(), kelvinExpectedValue)
        XCTAssertEqual(celsiusConverter.getCelsiusValue(), Int(value.rounded()))
    }
    
    func testCelsiusConversion4() {
        
        let value: Double = 77.77
        celsiusConverter.setTemperature(value: value)
        fahrenheitExpectedValue = 172
        kelvinExpectedValue = 351
        XCTAssertEqual(celsiusConverter.getFahrenheitValue(), fahrenheitExpectedValue)
        XCTAssertEqual(celsiusConverter.getKelvinValue(), kelvinExpectedValue)
        XCTAssertEqual(celsiusConverter.getCelsiusValue(), Int(value.rounded()))
    }
    
    func testKelvinConversion1() {
        let value: Double = 0.00
        kelvinConverter.setTemperature(value: value)
        celsiusExpectedValue = -273
        fahrenheitExpectedValue = -460
        
        XCTAssertEqual(kelvinConverter.getCelsiusValue(), celsiusExpectedValue)
        XCTAssertEqual(kelvinConverter.getFahrenheitValue(), fahrenheitExpectedValue)
        XCTAssertEqual(kelvinConverter.getKelvinValue(), Int(value.rounded()))
    }
    /*  TODO: Fix Temperature Converter Model to handle values being
        passed into kelvin converter being less than 0 */
    /*func testKelvinConversion2() {
        let value: Double = -50
        kelvinConverter.setTemperature(value: value)
        celsiusExpectedValue = 273
        fahrenheitExpectedValue = -460
        
        XCTAssertEqual(kelvinConverter.getCelsiusValue(), celsiusExpectedValue)
        XCTAssertEqual(kelvinConverter.getFahrenheitValue(), fahrenheitExpectedValue)
        XCTAssertEqual(kelvinConverter.getKelvinValue(), Int(value.rounded()))
    }
    */
    func testKelvinConversion3() {
        let value: Double = 273
        kelvinConverter.setTemperature(value: value)
        celsiusExpectedValue = 0
        fahrenheitExpectedValue = 32
        
        XCTAssertEqual(kelvinConverter.getCelsiusValue(), celsiusExpectedValue)
        XCTAssertEqual(kelvinConverter.getFahrenheitValue(), fahrenheitExpectedValue)
        XCTAssertEqual(kelvinConverter.getKelvinValue(), Int(value.rounded()))
    }
    
    func testKelvinConversion4() {
        let value: Double = 1000
        kelvinConverter.setTemperature(value: value)
        celsiusExpectedValue = 727
        fahrenheitExpectedValue = 1340
        
        XCTAssertEqual(kelvinConverter.getCelsiusValue(), celsiusExpectedValue)
        XCTAssertEqual(kelvinConverter.getFahrenheitValue(), fahrenheitExpectedValue)
        XCTAssertEqual(kelvinConverter.getKelvinValue(), Int(value.rounded()))
    }

    
}
