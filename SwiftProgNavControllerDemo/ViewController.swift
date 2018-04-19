//
//  ViewController.swift
//  SwiftProgNavControllerDemo
//
//  Created by Steven Lipton on 7/6/16.
//  Copyright © 2016 Steven Lipton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func sixNavigationButton(_ sender: UIButton) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "Six") else {
            print("View controller Six not found")
            return
        }
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func sixModalButton(_ sender: UIButton) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "Six") else {
            print("View controller Six not found")
            return
        }
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func modalTwoButton(_ sender: UIButton) {
        let vc = TwoViewController(
            nibName: "TwoViewController",
            bundle: nil)
        present(vc, animated: true, completion: nil)
    }

    @IBAction func nextButton(_ sender: UIButton) {
        let vc = TwoViewController(
            nibName: "TwoViewController",
            bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func fourFiveToggleButton(_ sender: UIButton){
        let normal = UIControlState(rawValue: 0) //beta 1 has no .normal bug#26856201
        if sender.titleLabel?.text == "Four"{
            performSegue(withIdentifier: "Four",
                         sender: self)
            sender.setTitle("Five", for: normal)
        } else{
            performSegue(withIdentifier: "Five",
                         sender: self)
            sender.setTitle("Four", for: normal)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

