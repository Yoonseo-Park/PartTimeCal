//
//  ViewController2.swift
//  PartTimeCal
//
//  Created by SWUCOMPUTER on 14/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet var fromWageLabel: UILabel!
    @IBOutlet var toPicker: UIPickerView!
    
    var receivedText = String()
    let toArray: Array<String> = ["주급", "월급"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return toArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return toArray[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fromWageLabel.text = "시급 " + receivedText + "원을"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ViewController3
        let to: String = toArray[self.toPicker.selectedRow(inComponent: 0)]
        
        destVC.wage = receivedText

        if to == "주급" {
            destVC.toWorkTimeLabel = "한 주 근무시간"
            destVC.toinfoLabel = "하루 8시간, 주 5일의 주 근로시간은 주휴시간 8시간을 포함해서 48시간 입니다."
        }
        else if to == "월급" {
            destVC.toWorkTimeLabel = "한 달 근무시간"
            destVC.toinfoLabel = "하루 8시간, 주 5일의 월 근로시간은 주휴시간 35시간을 포함해서 209시간 입니다."
        }
    }
}
