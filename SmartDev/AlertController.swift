//
//  AlertController.swift
//  SmartDev
//
//  Created by Guy Carlos Villette on 2/8/20.
//  Copyright © 2020 Guy Carlos Villette. All rights reserved.
//

import UIKit

class AlertController {
    static func showAlert(inViewController: UIViewController, title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        inViewController.present(alert, animated: true, completion: nil)
        
    }
}
