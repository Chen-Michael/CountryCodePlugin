//
//  ViewController.swift
//  CountryCodePluginDemo
//
//  Created by Mike on 2020/5/16.
//  Copyright © 2020 Mike. All rights reserved.
//

import UIKit
import CountryCodePlugin

class ViewController: UIViewController, CountryCodeDeledate {
    
    @IBOutlet weak var codeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var useTW: UIButton!
    @IBOutlet weak var useEN: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        useTW.layer.cornerRadius = 10
        useTW.layer.borderWidth = 1
        useEN.layer.cornerRadius = 10
        useEN.layer.borderWidth = 1
    }
    
    func countryCodeDidSelect(code: String, name: String) {
        codeLabel.text = code
        nameLabel.text = name
    }
    
    func makeCountryCodeCell(cell: UITableViewCell, code: String, name: String) -> UITableViewCell {
        let nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        
        guard let view = nib.instantiate(withOwner: nil)[0] as? CustomTableViewCell else {
            fatalError("Attempted to create CustomTableViewCell, failed to find object")
        }
        
        view.codeLabel.text = code
        
        return view
    }
    
    @IBAction func useTW(_ sender: Any) {
        let controller = CountryCodeTableViewController.instantiate()
        controller.modalPresentationStyle = .fullScreen
        controller.delegate = self
        
        present(controller, animated: true, completion: nil)
    }
    
    @IBAction func useEN(_ sender: Any) {
        let controller = CountryCodeTableViewController.instantiate()
        controller.modalPresentationStyle = .fullScreen
        controller.language = .EN
        controller.delegate = self
        
        present(controller, animated: true, completion: nil)
    }
    
}

