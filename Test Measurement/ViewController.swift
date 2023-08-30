//
//  ViewController.swift
//  Test Measurement
//
//  Created by Dmitry Sachkov on 21.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var metters: Double = 0.9

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changeUnits()
    }

    private func changeUnits() {
        let newValue = Measurement(value: metters, unit: UnitLength.meters)
        
        let locale = Locale(identifier: "EN_UK")
        locale.usesMetricSystem // true!
        var formatter = MeasurementFormatter()
        formatter.locale = locale
        let newFeet = formatter.string(from: Measurement(value: metters, unit: UnitSpeed.metersPerSecond))
        
        let secondValue = newValue.converted(to: UnitLength.feet)
        
        print("\(newValue) || \(secondValue) || \(newFeet)")
    }

}

