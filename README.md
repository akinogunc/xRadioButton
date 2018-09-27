# xRadioButton
[![Swift Version](https://img.shields.io/badge/Swift-4-F16D39.svg?style=flat)](https://img.shields.io/dub/l/vibe-d.svg)
[![Version](https://img.shields.io/cocoapods/v/xRadioButton.svg?style=flat)](https://cocoapods.org/pods/xRadioButton)
[![License](https://img.shields.io/cocoapods/l/xRadioButton.svg?style=flat)](https://cocoapods.org/pods/xRadioButton)
[![Platform](https://img.shields.io/cocoapods/p/xRadioButton.svg?style=flat)](https://cocoapods.org/pods/xRadioButton)

<img align="center" src="https://github.com/akinogunc/xRadioButton/blob/master/demo.gif?raw=true" width="300">

## Example

First import the module

```swift
import xRadioButton
```

Creating a xRadioButton

```swift
let radioButton = xRadioButton(title: "Water", frame: CGRect(x: 100, y: 150, width: 120, height: 40), font: UIFont.boldSystemFont(ofSize: 14), color: UIColor.cyan)
self.view.addSubview(radioButton)
```

Getting state of the button

```swift
radioButton.isSelected
```

If you want to receive button selection changes, use the delegate

```swift
class ..., xRadioButtonDelegate

let radioButton = xRadioButton(title: "Water", frame: CGRect(x: 100, y: 150, width: 120, height: 40), font: UIFont.boldSystemFont(ofSize: 14), color: UIColor.cyan)
radioButton.tag = 1
radioButton.delegate = self
self.view.addSubview(radioButton)

func didSelectButton(sender:xRadioButton) {
  print("Button \(sender.tag) is \(sender.isSelected)")
}
```

## Requirements
- iOS 9.0+
- Xcode 9+
- Swift 4+

## Installation

xRadioButton is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'xRadioButton'
```

## Author

akinogunc, akinogunc@gmail.com

## License

xRadioButton is available under the MIT license. See the LICENSE file for more info.
