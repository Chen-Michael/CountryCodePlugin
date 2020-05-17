# CountryCodePlugin

[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/CountryCodePlugin.svg)](https://cocoapods.org/pods/CountryCodePlugin)
[![Platform](https://img.shields.io/cocoapods/p/CountryCodePlugin.svg?style=flat)](./)
[![License](https://img.shields.io/cocoapods/l/CountryCodePlugin.svg?style=flat)](https://raw.githubusercontent.com/Chen-Michael/CountryCodePlugin/master/LICENSE)

## Requirements

- iOS 10.0+
- Xcode 11.0+
- Swift 5.0+

## Installation

### [CocoaPods](https://guides.cocoapods.org/using/using-cocoapods.html)

Add this to `Podfile`, and then update dependency:

```ruby
pod 'CountryCodePlugin'
```

## Usage

### Quick Start

```swift
import CountryCodePlugin

let controller = CountryCodeTableViewController.instantiate()
controller.modalPresentationStyle = .fullScreen
controller.delegate = self
controller.language = .TW
        
present(controller, animated: true, completion: nil)

// Callback after user selection
func countryCodeDidSelect(code: String, name: String) {
    
}

// You can custom the layout of cell (Optional)
func makeCountryCodeCell(cell: UITableViewCell, code: String, name: String) -> UITableViewCell {
    return cell
}

```

## Support language
- English
- Traditional Chinese

## Feature
- [x] Custom cell
- [ ] Text search
- [ ] Pictures of national flag
- [ ] Grouping for cell
