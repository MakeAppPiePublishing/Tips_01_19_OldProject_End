//
//  TwoViewController.swift
//  SwiftProgNavControllerDemo
//
//  Created by Steven Lipton on 7/6/16.
//  Copyright © 2016 Steven Lipton. All rights reserved.
//

import UIKit

class TwoViewController: UIViewController {
    @IBAction func backButton(_ sender:UIButton){
        guard navigationController?.popViewController(animated: true) != nil else { //modal
            print("Not a navigation Controller")
            dismiss(animated: true, completion: nil)
            return
        }
    }
}
