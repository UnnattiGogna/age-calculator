//
//  ViewController.swift
//  ageCalculator
//
//  Created by SDC-USER on 28/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageCalculation: UILabel!
    @IBOutlet weak var enterBirthYear: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func enter(_ sender: Any) {
        let currentAge = Int(enterBirthYear.text ?? "") ?? 0
        let currYear = Date()
        ageCalculation.text = "Your age is \(String (dateTimeFormat(from: currYear) - currentAge)) !"
    }
    func dateTimeFormat (from date: Date) -> Int {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year], from: date)
        return (
            components.year ?? 0
        )
        
    }
}

