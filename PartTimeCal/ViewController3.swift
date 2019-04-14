//
//  ViewController3.swift
//  PartTimeCal
//
//  Created by SWUCOMPUTER on 14/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet var workTimeLabel: UILabel!
    @IBOutlet var workTimeText: UITextField!
    @IBOutlet var infoLabel: UILabel!
    
    var toWorkTimeLabel = String()
    var toinfoLabel = String()
    var wage = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        workTimeLabel.text = toWorkTimeLabel
        infoLabel.text = toinfoLabel
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ViewController4
        if let time = workTimeText.text {
            destVC.time = time
        }
        destVC.wage = wage
    }
    // 앞에서 전달받은 시급값은 그대로 다음 VC로 넘겨주고,
    // UITextField를 통해 입력받은 time값은 Optional Binding을 통해
    // 값을 다음 VC로 넘겨준다.
}


