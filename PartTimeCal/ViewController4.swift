//
//  ViewController4.swift
//  PartTimeCal
//
//  Created by SWUCOMPUTER on 14/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {

    @IBOutlet var resultLabel: UILabel!
    var wage = String()
    var time = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "\(Double(time)! * Double(wage)!)"
        // 앞에서 전달받은 시급과 근무시간은 string 타입이므로
        // String->Double 형변환을 한 후에 값을 곱해준다.
    }
}
