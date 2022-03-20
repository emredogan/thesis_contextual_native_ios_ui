//
//  ViewController.swift
//  Thesis_Contextual_Native_iOS_UI
//
//  Created by Emre Dogan on 19/03/2022.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let months = ["January","February","March","April", "May", "June", "July", "August", "September", "October", "November", "December"]
    
    let days = ["1","2","3","4", "5", "6", "7", "8", "9", "10", "11", "12","13","14","14", "15", "16", "17", "18", "19", "20", "21", "22","23","24", "25", "26", "27", "28", "29", "30", "31"]


    
    @IBOutlet weak var pickerDay: UIPickerView!
    @IBOutlet weak var pickerMonth: UIPickerView!
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var secondName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerDay.delegate = self
        pickerDay.dataSource = self
        
        pickerMonth.delegate = self
        pickerMonth.dataSource = self
    }
    @IBAction func signUpClicked(_ sender: Any) {
        if (firstName.text!.isEmpty || secondName.text!.isEmpty || password.text!.isEmpty) {
            
            let alert = UIAlertController(title: "Alert", message: "Please fill up all the mandatory fields", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                switch action.style{
                    case .default:
                    print("default")
                    
                    case .cancel:
                    print("cancel")
                    
                    case .destructive:
                    print("destructive")
                    
                }
            }))
            self.present(alert, animated: true, completion: nil)
        } else {
            // NAVIGATE TO NEXT TAB
            tabBarController?.selectedIndex = 1
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        sliderLabel.text = "\(currentValue)"
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1 {
            return days.count
        }
        return months.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 1 {
            return days[row]
        }
        return months[row]
    }
    
    


}

