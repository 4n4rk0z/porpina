//
//  ViewController.swift
//  propina
//
//  Created by 4n4rk0z on 5/21/19.
//  Copyright © 2019 4n4rk0z. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txfTotal: UITextField!
    @IBOutlet weak var btnAction: UIButton!
    @IBOutlet weak var txfHowMany: UITextField!
    @IBOutlet weak var lblTip: UILabel!
    @IBOutlet weak var lblTotalWithTip: UILabel!
    
    var data1: String = ""
    var data2: String = ""
    var value1: Double = 0.0
    var value2: Double = 0.0
    var total: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func giveTotal(_ sender: Any) {
        data1 = txfTotal.text!
        data2 = txfHowMany.text!
        
        if data1.isEmpty && data2.isEmpty {
            alertShowError(withMessage: "Es necesario ingresar todos los datos", withTitleAction: "Entendido!")
        } else {
            calculate()
        }
    }
    
    
    func calculate() {
        data1 = txfTotal.text!
        data2 = txfHowMany.text!
        
        value1 = (data1 as NSString).doubleValue
        value2 = (data2 as NSString).doubleValue
        
        total = value1 + value2
        print("total pedorro = \(total)")
    }
    
    private func alertShowError(withMessage message: String, withTitleAction titleAction: String) {
        let alertController = UIAlertController(title: "Error",
                                                message: message,
                                                preferredStyle: .alert)
        let okAction = UIAlertAction(title: titleAction, style: .destructive) { (_:UIAlertAction!) in
        }
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion:nil)
    }
}

