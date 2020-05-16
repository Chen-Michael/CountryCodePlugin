//
//  CountryCodeDeledate.swift
//  CountryCodePlugin
//
//  Created by Mike on 2020/5/16.
//  Copyright © 2020 Mike. All rights reserved.
//

import UIKit
import Foundation

public protocol CountryCodeDeledate: class {
    
    // Custom layout of cell
    func makeCountryCodeCell(cell: UITableViewCell, code: String, name: String) -> UITableViewCell
    
    // Callback after user selection
    func countryCodeDidSelect(code: String, name: String)
    
}

public extension CountryCodeDeledate {
    
    // Default layout of cell
    func makeCountryCodeCell(cell: UITableViewCell, code: String, name: String) -> UITableViewCell {
        if let cell = cell as? CountryCodeTableViewCell {
            cell.codeLabel.text = code
            cell.countryLabel.text = "(\(name))"
            
            return cell
        }
        
        return cell
    }
    
}
