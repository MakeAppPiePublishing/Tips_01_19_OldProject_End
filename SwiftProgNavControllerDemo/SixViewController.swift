//
//  SixViewController.swift
//  SwiftProgNavControllerDemo
//
//  Created by Steven Lipton on 7/8/16.
//  Copyright © 2016 Steven Lipton. All rights reserved.
//

import UIKit

class SixViewController: UIViewController {
    
    @IBAction func backButton(_ sender: UIButton) {
        guard (navigationController?.popViewController(animated:true)) != nil
            else {
                dismiss(animated: true, completion: nil)
                return
        }
    }
    @IBAction func rootButton(_ sender: UIButton) {
        guard navigationController?.popToRootViewController(animated: true) != nil
        else {
            print("No Navigation Controller")
            return
        }
    }
    
    }
