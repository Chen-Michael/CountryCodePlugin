//
//  CountryCodeTableViewController.swift
//  CountryCodePlugin
//
//  Created by Mike on 2020/5/16.
//  Copyright © 2020 Mike. All rights reserved.
//

import UIKit

public class CountryCodeTableViewController: UITableViewController {

    public weak var delegate: CountryCodeDeledate!
    public var language: CountryCodeLanguage = .TW
    var code: [String] = [String]()
    var name: [String] = [String]()
    
    public static func instantiate() -> CountryCodeTableViewController {
        let storyboard = UIStoryboard.init(name: "CountryCode", bundle: Bundle(for: self))
        
        return storyboard.instantiateViewController(withIdentifier: "CountryCodeTableViewController") as! CountryCodeTableViewController
    }
    
    private func loadData() {
        if let URL = Bundle(for: type(of: self)).path(forResource: "CountryCodeList\(language)", ofType: "plist"), let list = NSArray(contentsOfFile: URL) as? [NSDictionary] {
            for item in list {
                code.append(item.allKeys[0] as! String)
                name.append(item.allValues[0] as! String)
            }
            
            return
        }
        
        if let URL = Bundle(for: type(of: self)).path(forResource: "CountryCodeList\(language)", ofType: "plist", inDirectory: "Resources"), let list = NSArray(contentsOfFile: URL) as? [NSDictionary] {
            for item in list {
                code.append(item.allKeys[0] as! String)
                name.append(item.allValues[0] as! String)
            }
        }
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }
    
    public override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return code.count
    }

    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        return delegate.makeCountryCodeCell(cell: cell, code: code[indexPath.row], name: name[indexPath.row])
    }
    
    public override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate.countryCodeDidSelect(code: code[indexPath.row], name: name[indexPath.row])
        
        dismiss(animated: true, completion: nil)
    }
    
}
