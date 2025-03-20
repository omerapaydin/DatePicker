//
//  ViewController.swift
//  DatePicker
//
//  Created by Ömer on 20.03.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldTarih: UITextField!
    
    var datePicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        textFieldTarih.inputView = datePicker
        
        
        datePicker.addTarget(self, action: #selector(self.tarihGoster(datePicker:)), for: .valueChanged)
        
    }
    
    
    @objc func tarihGoster(datePicker: UIDatePicker){
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"
        textFieldTarih.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
        print(datePicker.date)
    }


}

